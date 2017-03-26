using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Mvc;
using App.Common;
using App.Common.Enums;
using App.Service.IService;
using App.WebUI.Controllers;
using App.WebUI.Areas.SysManage.Models.Mapping;

namespace App.WebUI.Areas.SysManage.Controllers
{
    public class ModuleController : BaseController
    {
        #region 声明容器
        /// <summary>
        /// 模块管理
        /// </summary>
        IModuleManage ModuleManage { get; set; }
        /// <summary>
        /// 权限管理
        /// </summary>
        IPermissionManage PermissionManage { get; set; }
        /// <summary>
        /// 系统管理
        /// </summary>
        ISystemManage SystemManage { get; set; }
        #endregion
        /// <summary>
        /// 模块管理加载首页
        /// </summary>
        /// <returns></returns>
        //[UserAuthorizeAttribute(ModuleAlias = "Module", OperaAction = "View")]/*验证用户对Module模块是否有View(查看)权限*/
        public ActionResult Index()
        {
            try
            {
                #region 处理查询参数
                var systems = Request.QueryString["System"];
                ViewBag.Search = keywords;
                ViewData["System"] = systems;
                ViewData["SystemList"] = SystemManage;
                #endregion

                return View(BindList(systems));
            }
            catch (Exception ex)
            {
                //WriteLog
                throw ex.InnerException;
            }
        }
        public ActionResult Detail(int? id)
        {
            try
            {
                var _entity = new Domain.SYS_MODULE()
                {
                    ISSHOW = true,
                    MODULEPATH = "javascript:void(0)",
                    MODULETYPE = 1
                };

                //父模块
                string parentId = Request.QueryString["parentId"];
                if (!string.IsNullOrEmpty(parentId))
                {
                    _entity.PARENTID = int.Parse(parentId);
                }
                else
                {
                    _entity.PARENTID = 0;
                }
                //所属系统
                string sys = Request.QueryString["sys"];
                if (!string.IsNullOrEmpty(sys))
                {
                    _entity.FK_BELONGSYSTEM = sys;
                }
                //详情
                if (id != null && id > 0)
                {
                    _entity = ModuleManage.Get(p => p.ID == id);
                }
                //页面类型
                ViewData["ModuleType"] = Enum.GetNames(typeof(enumModuleType));
                //加载用户可操作的系统
                ViewData["Systemlist"] = SystemManage.LoadSystemInfo(CurrentUser.System_Id);

                ViewData["Modules"] = BindList(_entity.FK_BELONGSYSTEM);

                return View(_entity);
            }
            catch (Exception e)
            {
                WriteLog(enumOperator.Select, "模块管理加载详情", e);
                throw;
            }
        }
        /// <summary>
        /// 保存模块
        /// </summary>
        /// <param name="entity"></param>
        /// <returns></returns>
        [UserAuthorize(ModuleAlias = "Module", OperaAction = "Add,Edit")]
        public ActionResult Save(Domain.SYS_MODULE entity)
        {
            bool isEdit = false;
            var json = new JsonHelper { Msg = "保存成功", Status = "n" };


            try
            {
                if (entity == null)
                {
                    json.Msg = "未找到需要保存的模块";
                    return Json(json);
                }
                //验证
                if (!Regex.IsMatch(entity.ALIAS, @"^[A-Za-z0-9]{1,20}$"))
                {
                    json.Msg = "模块别名只能以字母数字组成，长度不能超过20个字符";
                    return Json(json);
                }
                //级别加1，一级模块默认0
                if (entity.PARENTID <= 0)
                {
                    entity.LEVELS = 0;
                }
                else
                {
                    entity.LEVELS = this.ModuleManage.Get(p => p.ID == entity.PARENTID).LEVELS + 1;
                }
                //添加
                if (entity.ID <= 0)
                {
                    entity.CREATEDATE = DateTime.Now;
                    entity.CREATEUSER = this.CurrentUser.Name;
                    entity.UPDATEDATE = DateTime.Now;
                    entity.UPDATEUSER = this.CurrentUser.Name;
                }
                else //修改
                {
                    entity.UPDATEDATE = DateTime.Now;
                    entity.UPDATEUSER = this.CurrentUser.Name;
                    isEdit = true;
                }
                //模块别名同系统下不能重复
                if (this.ModuleManage.IsExist(p => p.FK_BELONGSYSTEM == entity.FK_BELONGSYSTEM && p.ALIAS == entity.ALIAS && p.ID != entity.ID))
                {
                    json.Msg = "同系统下模块别名不能重复";
                    return Json(json);
                }
                //判断同一个父模块下，是否重名 
                if (!this.ModuleManage.IsExist(p => p.PARENTID == entity.PARENTID && p.FK_BELONGSYSTEM == entity.FK_BELONGSYSTEM && p.NAME == entity.NAME && p.ID != entity.ID))
                {

                    if (this.ModuleManage.SaveOrUpdate(entity, isEdit))
                    {

                        json.Status = "y";
                    }
                    else
                    {
                        json.Msg = "保存失败";
                    }

                    //如果模块修改成功，我们变更下级模块的级别
                    if (isEdit)
                        ModuleManage.MoreModifyModule(entity.ID, entity.LEVELS);
                }
                else
                {
                    json.Msg = "模块" + entity.NAME + "已存在，不能重复添加";
                }


            }
            catch (Exception e)
            {
                json.Msg = "保存模块发生内部错误！";
                WriteLog(Common.Enums.enumOperator.None, "保存模块：", e);
            }
            return Json(json);
        }
        /// <summary>
        /// 删除模块
        /// </summary>
        /// <param name="idList"></param>
        /// <returns></returns>
        [UserAuthorize(ModuleAlias = "Module", OperaAction = "Remove")]
        public ActionResult Delete(string idList)
        {
            JsonHelper json = new JsonHelper() { Msg = "删除模块成功", ReUrl = "", Status = "n" };
            try
            {
                if (!string.IsNullOrEmpty(idList))
                {
                    var idlist1 = idList.Trim(',').Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries).Select(p => int.Parse(p)).ToList();


                    //判断权限里面有没有
                    if (!this.PermissionManage.IsExist(p => idlist1.Any(e => e == p.MODULEID)))
                    {
                        //存在子模块与否
                        if (!this.ModuleManage.IsExist(p => idlist1.Any(e => e == p.PARENTID)))
                        {
                            this.ModuleManage.Delete(p => idlist1.Any(e => e == p.ID));
                            json.Status = "y";
                        }
                        else
                        {
                            json.Msg = "该模块下有子模块，不能删除";
                        }
                    }
                    else
                    {
                        json.Msg = "该模块下有权限节点，不能删除";
                    }

                }
                else
                {
                    json.Msg = "未找到要删除的模块";
                }
                WriteLog(Common.Enums.enumOperator.Remove, "删除模块，结果：" + json.Msg, Common.Enums.enumLog4net.WARN);
            }
            catch (Exception e)
            {
                json.Msg = "删除模块发生内部错误！";
                WriteLog(Common.Enums.enumOperator.Remove, "删除模块：", e);
            }
            return Json(json);
        }
        private IList<Models.ModuleViewModel> BindList(string systems)
        {
            //预加载所有模块
            var query = ModuleManage.LoadAll(null);

            //系统ID
            //if (!string.IsNullOrEmpty(systems))
            //{
            //    query = query.Where(p => p.FK_BELONGSYSTEM == systems);
            //}
            //else
            //{
            //    query = query.Where(p => CurrentUser.System_Id.Any(e => e == p.FK_BELONGSYSTEM));
            //}
            
            //递归排序（无分页）
            var entity = ModuleManage.RecursiveModule(query.ToList()).ConvertToModuleView();
            return entity;
        }

        private object GetModuleName(string name, decimal? level)
        {
            if (level > 0)
            {
                var nbsp = "&nbsp;&nbsp;";
                for (var i = 0; i < level; i++)
                {
                    nbsp += "&nbsp;&nbsp;";
                }
                name = nbsp + "  |--" + name;
            }
            return name;
        }

        public ActionResult Save()
        {
            throw new NotImplementedException();
        }
    }
}
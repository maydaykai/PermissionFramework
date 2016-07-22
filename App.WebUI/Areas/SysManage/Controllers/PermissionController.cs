using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using App.Service.IService;
using App.WebUI.Controllers;

namespace App.WebUI.Areas.SysManage.Controllers
{
    public class PermissionController : BaseController
    {
        #region 声明容器
        /// <summary>
        /// 系统管理
        /// </summary>
        ISystemManage SystemManage { get; set; }
        /// <summary>
        /// 权限管理
        /// </summary>
        IPermissionManage PermissionManage { get; set; }
        /// <summary>
        /// 模块管理
        /// </summary>
        IModuleManage ModuleManage { get; set; }
        #endregion

        /// <summary>
        /// 权限管理 权限列表
        /// </summary>
        /// <returns></returns>
        [UserAuthorizeAttribute(ModuleAlias = "Permission", OperaAction = "View")]
        public ActionResult Index()
        {
            try
            {
                //获取模块ID
                var moduleId = Request.QueryString["moduleId"] ?? (Request["moduleId"] ?? "");

                //如果模块ID不为空或NULL
                if (!string.IsNullOrEmpty(moduleId))
                {
                    //把模块ID转为Int
                    int module_Id = int.Parse(moduleId);

                    //模块信息
                    var module = this.ModuleManage.Get(p => p.ID == module_Id);

                    //绑定列表
                    var query = this.PermissionManage.LoadAll(p => p.MODULEID == module.ID);

                    //关键字查询
                    if (!string.IsNullOrEmpty(keywords))
                    {
                        query = query.Where(p => p.NAME.Contains(keywords));
                    }
                    //输出结果
                    var result = query.OrderBy(p => p.SHOWORDER).ToList();

                    ViewBag.Search = base.keywords;

                    ViewBag.Module = module;

                    return View(result);
                }

                return View();
            }
            catch (Exception e)
            {
                WriteLog(Common.Enums.enumOperator.Select, "对模块权限按钮的管理加载主页：", e);
                throw e.InnerException;
            }
        }
        /// <summary>
        /// 权限管理 默认页面
        /// </summary>
        /// <returns></returns>
        [UserAuthorizeAttribute(ModuleAlias = "Permission", OperaAction = "View")]
        public ActionResult Home()
        {
            try
            {
                //获取用户可操作的系统列表
                //ViewData["Systemlist"] = this.SystemManage.LoadSystemInfo(CurrentUser.System_Id);
            }
            catch (Exception e)
            {
                WriteLog(Common.Enums.enumOperator.Select, "对模块权限按钮的管理加载导航页：", e);
            }

            return View();
        }
    }
}
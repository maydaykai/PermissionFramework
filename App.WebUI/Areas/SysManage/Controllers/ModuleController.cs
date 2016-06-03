using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using App.Service.IService;
using App.WebUI.Controllers;

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
        [UserAuthorizeAttribute(ModuleAlias = "Module", OperaAction = "View")]/*验证用户对Module模块是否有View(查看)权限*/
        public ActionResult Index()
        {
            var systems = Request.QueryString["System"];
            ViewBag.Search = keywords;
            ViewData["System"] = systems;
            ViewData["SystemList"] = SystemManage;
            return View(BindList(systems));
        }

        private object BindList(string systems)
        {
            //预加载所有模块
            var query = ModuleManage.LoadAll(null);

            //系统ID
            if (!string.IsNullOrEmpty(systems))
            {
                query = query.Where(p => p.FK_BELONGSYSTEM == systems);
            }
            else
            {
                query = query.Where(p => CurrentUser.System_Id.Any(e => e == p.FK_BELONGSYSTEM));
            }
            //递归排序（无分页）
            var entity = ModuleManage.RecursiveModule(query.ToList())
                .Select(p => new
                {
                    p.ID,
                    MODULENAME = GetModuleName(p.NAME, p.LEVELS),
                    p.ALIAS,
                    p.MODULEPATH,
                    p.SHOWORDER,
                    p.ICON,
                    MODULETYPE = ((Common.Enums.enumModuleType)p.MODULETYPE).ToString(),
                    ISSHOW = p.ISSHOW ? "显示":"隐藏",
                    p.NAME,
                    SYSNAME = p.SYS_SYSTEM.NAME,
                    p.FK_BELONGSYSTEM
                });
            return Common.JsonConverter.JsonClass(entity);
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
    }
}
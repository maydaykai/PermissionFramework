using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using App.Service.IService;
using App.WebUI.Controllers;

namespace App.WebUI.Areas.SysManage.Controllers
{
    public class HomeController : BaseController
    {
        #region 声明容器
        IModuleManage ModuleManage { get; set; }
        #endregion
        // GET: SysManage/Home
        public ActionResult Index()
        {
            ViewData["Module"] = ModuleManage.GetModule(CurrentUser.Id, CurrentUser.Permissions, CurrentUser.System_Id);
            return View(this.CurrentUser);
        }
    }
}
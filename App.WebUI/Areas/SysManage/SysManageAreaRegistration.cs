using System.Web.Mvc;

namespace App.WebUI.Areas.SysManage
{
    public class SysManageAreaRegistration : AreaRegistration
    {
        public override string AreaName => "SysManage";

        public override void RegisterArea(AreaRegistrationContext context)
        {
            context.MapRoute(
                "SysManage_default",
                "Sys/{controller}/{action}/{id}",
                new { action = "Index", id = UrlParameter.Optional },
                new string[] { "App.WebUI.Areas.SysManage.Controllers" }
            );
        }
    }
}
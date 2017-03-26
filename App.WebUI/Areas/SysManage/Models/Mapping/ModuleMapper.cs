using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AutoMapper;

namespace App.WebUI.Areas.SysManage.Models.Mapping
{
    public static class ModuleMapper
    {
        public static List<ModuleViewModel> ConvertToModuleView(this List<Domain.SYS_MODULE> module)
        {
            return Mapper.Map<List<Domain.SYS_MODULE>, List<ModuleViewModel>>(module);
        }
    }
}
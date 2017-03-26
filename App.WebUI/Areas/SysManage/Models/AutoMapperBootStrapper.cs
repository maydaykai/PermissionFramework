using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AutoMapper;

namespace App.WebUI.Areas.SysManage.Models
{
    public class AutoMapperBootStrapper
    {
        public static void ConfigureAutoMapper()
        {
            Mapper.Initialize(cfg =>
            {
                cfg.CreateMap<Domain.SYS_MODULE, ModuleViewModel>()
                    .ForMember(dest => dest.NAME, opt => opt.ResolveUsing<CustomResolver>())
                    .ForMember(d => d.SYSNAME, opt => opt.MapFrom(s => s.SYS_SYSTEM.NAME))
                    .ForMember(d => d.ISSHOW, opt => opt.MapFrom(s => s.ISSHOW ? "显示" : "隐藏"));
            });
        }
        public class CustomResolver : IValueResolver<Domain.SYS_MODULE, ModuleViewModel, string>
        {
            public string Resolve(Domain.SYS_MODULE source, ModuleViewModel d, string dest, ResolutionContext context)
            {
                if (source.LEVELS > 0)
                {
                    var nbsp = "";
                    for (var i = 0; i < source.LEVELS; i++)
                    {
                        nbsp += "　　";
                    }
                    return nbsp + "  |--" + source.NAME;
                }
                return source.NAME;
            }
        }
    }
}
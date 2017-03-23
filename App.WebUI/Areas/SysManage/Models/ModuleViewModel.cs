using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace App.WebUI.Areas.SysManage.Models
{
    public class ModuleViewModel
    {
        public int ID { get; set; }
        public string MODULENAME { get; set; }
        public string ALIAS { get; set; }
        public string MODULEPATH { get; set; }
        public string SHOWORDER { get; set; }
        public string ICON { get; set; }
        public string MODULETYPE { get; set; }
        public string ISSHOW { get; set; }
        public string NAME { get; set; }
        public string SYSNAME { get; set; }
        public string BELONGSYSTEM { get; set; }
    }
}
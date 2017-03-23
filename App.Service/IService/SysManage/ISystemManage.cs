using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.Service.IService
{
    public interface ISystemManage
    {
        dynamic LoadSystemInfo(List<string> systems);
    }
}

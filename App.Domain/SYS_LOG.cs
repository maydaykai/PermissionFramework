//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace App.Domain
{
    using System;
    using System.Collections.Generic;
    
    public partial class SYS_LOG
    {
        public int ID { get; set; }
        public Nullable<System.DateTime> DATES { get; set; }
        public string LEVELS { get; set; }
        public string LOGGER { get; set; }
        public string CLIENTUSER { get; set; }
        public string CLIENTIP { get; set; }
        public string REQUESTURL { get; set; }
        public string ACTION { get; set; }
        public string MESSAGE { get; set; }
        public string EXCEPTION { get; set; }
    }
}

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
    
    public partial class SYS_USER_ROLE
    {
        public int ID { get; set; }
        public int FK_USERID { get; set; }
        public int FK_ROLEID { get; set; }
    
        public virtual SYS_ROLE SYS_ROLE { get; set; }
        public virtual SYS_USER SYS_USER { get; set; }
    }
}

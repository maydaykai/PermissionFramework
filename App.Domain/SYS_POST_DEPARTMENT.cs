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
    
    public partial class SYS_POST_DEPARTMENT
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SYS_POST_DEPARTMENT()
        {
            this.SYS_POST_USER = new HashSet<SYS_POST_USER>();
        }
    
        public int ID { get; set; }
        public string FK_DEPARTMENT_ID { get; set; }
        public string FK_POST_ID { get; set; }
    
        public virtual SYS_DEPARTMENT SYS_DEPARTMENT { get; set; }
        public virtual SYS_POST SYS_POST { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SYS_POST_USER> SYS_POST_USER { get; set; }
    }
}
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
    
    public partial class SYS_POST
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SYS_POST()
        {
            this.SYS_POST_DEPARTMENT = new HashSet<SYS_POST_DEPARTMENT>();
        }
    
        public string ID { get; set; }
        public string POSTNAME { get; set; }
        public string POSTTYPE { get; set; }
        public string REMARK { get; set; }
        public Nullable<int> SHOWORDER { get; set; }
        public Nullable<int> CREATEUSERID { get; set; }
        public System.DateTime CREATEDATE { get; set; }
        public Nullable<System.DateTime> UPDATEDATE { get; set; }
        public string UPDATEUSER { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SYS_POST_DEPARTMENT> SYS_POST_DEPARTMENT { get; set; }
    }
}

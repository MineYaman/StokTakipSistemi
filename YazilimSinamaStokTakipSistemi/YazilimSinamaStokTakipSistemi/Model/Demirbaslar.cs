//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace YazilimSinamaStokTakipSistemi.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Demirbaslar
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Demirbaslar()
        {
            this.DemirbasDepartmen = new HashSet<DemirbasDepartman>();
        }
    
        public int DemirbasNo { get; set; }
        public Nullable<int> UrunId { get; set; }
        public string DemirbasKodu { get; set; }
        public string DemirbasAdi { get; set; }
        public Nullable<int> DemirbasAdedi { get; set; }
        public string DemirbasOzellikleri { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DemirbasDepartman> DemirbasDepartmen { get; set; }
        public virtual Urunler Urunler { get; set; }
    }
}
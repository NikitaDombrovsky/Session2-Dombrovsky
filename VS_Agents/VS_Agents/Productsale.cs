//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace VS_Agents
{
    using System;
    using System.Collections.Generic;
    
    public partial class Productsale
    {
        public int ID { get; set; }
        public string Product { get; set; }
        public string Name_Adent { get; set; }
        public Nullable<System.DateTime> Date { get; set; }
        public Nullable<int> ID_Product { get; set; }
        public Nullable<int> ID_Agent { get; set; }
        public Nullable<int> Count_Of_Product { get; set; }
    
        public virtual Agent Agent { get; set; }
        public virtual Product Product1 { get; set; }
    }
}
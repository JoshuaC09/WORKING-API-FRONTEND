using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MauiApp1.Models
{
    public class Stock
    {
        public string StkSCode { get; set; }
        public string StkItemNo { get; set; }
        public string StkLocation { get; set; }
        public string StkSubLocation { get; set; }
        public string StkSourceUOM { get; set; }
        public string StkLotNo { get; set; }
        public DateTime StkExpiration { get; set; }
        public double StkAvailableQty { get; set; }
        public double StkActualQty { get; set; }
        public DateTime StkLogDateTime { get; set; }
    }
}

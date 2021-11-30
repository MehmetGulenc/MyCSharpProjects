using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.Constants
{
    public static class Messages
    {
        public static string ProductAdded = "Ürün başarıyla eklendi";
        public static string ProductDeleted = "Ürün başarıyla silindi";
        public static string ProductUpdated = "Ürün başarıyla güncellendi";
        public static string ProductCountOfCategoryError = "Aynı kategoriden sadece 10 ürün olmalı";
        public static string ProductNameAlreadyExist = "Ürün adı zaten mevcut";

        public static string CategoryLimitExceded = "Ürün kategorisi limiti aşıldığı için ürün eklenemiyor";

        // ProductImage
        public static string ProductImageAdded = "Ürün resmi eklendi";
        public static string ProductImageUpdated = "Ürün resmi güncellendi";
        public static string ProductImageDeleted = "Ürün resmi silindi";
        public static string ProductImageListed = "Ürün resmimleri listelendi";

        public static string ProductImageLimitAchieved = "Bir ürün için en fazla 5 resim yüklenebilir";
        public static string ProductImageNotFound = "Ürün resmi bulunamadı";
        public static string ProductNotFound = "Ürün bulunamadı";
        
    }

}

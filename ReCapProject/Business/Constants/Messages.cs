using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business.Constants
{
    public static class Messages
    {
        //Car
        //-- positive
        public static string CarAdded = "Araba Eklendi";
        public static string CarDeleted = "Araba Silindi";
        public static string CarUpdated = "Araba Güncellendi";
        public static string CarsListed = "Arabalar Listelendi";
        public static string CarListed = "Araba Listelendi";
        public static string CarListedByBrand = "Araba, markaya göre listelendi";
        public static string CarListedByColor = "Araba, renge göre listelendi";
        public static string CarDetailsListed = "Araba detayları listelendi";
        public static string CarCountOfOpelError = "Opel Marka Araçtan 2 den fazla olamaz.";

        //--negative
        public static string CarNameInvalid = "Araba adı geçersiz";
        public static string DailyPriceInvalid = "Günlük fiyat geçersiz";

        //Brand
        //-- positive
        public static string BrandAdded = "Marka Eklendi";
        public static string BrandDeleted = "Marka Silindi";
        public static string BrandUpdated = "Marka Güncellendi";
        public static string BrandsListed = "Markalar Listelendi";
        public static string BrandListed = "Marka Listelendi";

        //User
        //-- positive
        public static string UserAdded = "Kullanıcı Eklendi";
        public static string UserUpdated = "Kullanıcı Güncellendi";
        public static string UserDeleted = "Kullanıcı Silindi";
        public static string UserListed = "Kullanıcı Listelendi";
        public static string UsersListed = "Kullanıcılar Listelendi";

        //--negative
        public static string UserAddFailed = "Kullanıcı Ekleme Başarısız";
        public static string UserUpdateFailed = "Kullanıcı Ekleme Başarısız";
        public static string UserDeleteFailed = "Kullanıcı Ekleme Başarısız";
        public static string UserListingFailed = "Kullanıcı Listeleme Başarısız";
        public static string FailedToListUsers = "Kullanıcıları Listeleme başarısız";

        //Customer
        //-- positive
        public static string CustomerAdded = "Müşteri Eklendi";
        public static string CustomersListed = "Müşteriler Listelendi";
        public static string CustomerUpdate = "Müşteri Güncellendi";
        public static string CustomerDeleted = "Müşteri Silindi";

        //--negative
        public static string CustomerNameInvalid = "Müşteri İsmi Geçersiz";

        //Rental
        //-- positive
        public static string CarIsRented = "Araba Kiralandı";

        //--negative
        public static string CarRentalFailed = "Araba Kiralama Başarısız !!";
        public static string CarNotAvailable = "Araba Müsait Değil !";

        //System
        public static string MaintenanceTime = "Sistem bakımda";

        // CarImage
        public static string CarImageAdded = "Araba resmi eklendi";
        public static string CarImageLimitAchieved = "Bir araba için en fazla 5 resim yüklenebilir";
        public static string CarImageNotFound = "Araba resmi bulunamadı";
        public static string CarImageUpdated = "Araba resmi güncellendi";
    }
}
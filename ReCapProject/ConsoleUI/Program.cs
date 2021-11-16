using Business.Concrete;
using System;
using System.Runtime.InteropServices;
using DataAccess.Concrete.EntityFramework;
using DataAccess.Concrete.InMemory;
using Entities.Concrete;

namespace ConsoleUI
{
    class Program
    {
        static void Main(string[] args)
        {
            CarTest();

            Console.ReadLine();
        }

        private static void CarTest()
        {
            
            //AddACar();
            //GetCarDailyPrice();
            GetCarDetail();

        }

        private static void GetCarDailyPrice()
        {
            CarManager carManager = new CarManager(new efCarDal());
            var result = carManager.GetByDailyPrice(190, 320);
            foreach (var car in result.Data)
            {
                Console.WriteLine(car.CarName);
            }
        }

        private static void GetCarDetail()
        {
            CarManager carManager = new CarManager(new efCarDal());
            var result = carManager.GetCarDetails();
            if (result.Success == true)
            {
                foreach (var car in result.Data)
                {
                    Console.WriteLine(car.BrandName + " / " + car.CarName + " / " + car.ColorName + " / " + car.DailyPrice);
                }
            }
            else
            {
                Console.WriteLine(result.Message);
            }
        }

        private static void AddACar()
        {
            CarManager carManager = new CarManager(new efCarDal());
            carManager.Add(new Car
            {
                BrandId = 4,
                ColorId = 3,
                ModelYear = 2015,
                DailyPrice = 0,
                Description = "Citroen C3"
            });
        }
    }
}

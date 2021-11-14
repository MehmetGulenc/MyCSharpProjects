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
            CarManager carManager = new CarManager(new efCarDal());

            //AddACar(carManager);

            foreach (var car in carManager.GetCarsByColorId(1))
            {
                Console.WriteLine(car.Description);
            }

            Console.ReadLine();
        }

        private static void AddACar(CarManager carManager)
        {
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

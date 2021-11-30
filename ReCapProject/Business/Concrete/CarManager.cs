using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Metadata.Ecma335;
using System.Text;
using System.Threading.Tasks;
using Business.Abstract;
using Business.Constants;
using Business.ValidationRules.FluentValidation;
using Core.Aspects.Autofac.Validation;
using Core.CrossCuttingConcerns.Validation;
using Core.Utilities.Business;
using Core.Utilities.Results;
using DataAccess.Abstract;
using DataAccess.Concrete.InMemory;
using Entities.Concrete;
using Entities.DTOs;

namespace Business.Concrete
{
    public class CarManager : ICarService
    {
        ICarDal _carDal;
        IBrandService _brandService;
        public CarManager(ICarDal carDal, IBrandService brandService)
        {
            _carDal = carDal;
            _brandService = brandService;
        }
        [ValidationAspect(typeof(CarValidator))]
        public IResult Add(Car car)
        {
            IResult result = BusinessRules.Run(CheckIfCarCountOfBrandCorrect(car.BrandId), CheckIfBrandLimitExceded());

            if (result != null)
            {
                return result;
            }
            _carDal.Add(car);
            return new SuccessResult(Messages.CarAdded);
        }

        public IResult Delete(Car car)
        {
            IResult result = BusinessRules.Run(CheckCardIdExist(car.CarId));

            if (result != null)
            {
                return result;
            }
            _carDal.Delete(car);
            return new SuccessResult(Messages.CarDeleted);
        }
        [ValidationAspect(typeof(CarValidator))]
        public IResult Update(Car car)
        {
            IResult result = BusinessRules.Run(CheckCardIdExist(car.CarId));

            if (result != null)
            {
                return result;
            }
            _carDal.Update(car);
            return new SuccessResult(Messages.CarUpdated);
        }
        public IDataResult<List<Car>> GetAll()
        {
            return new SuccessDataResult<List<Car>>(_carDal.GetAll(), Messages.CarListed);
        }
        public IDataResult<List<Car>> GetByDailyPrice(decimal min, decimal max)
        {
            return new SuccessDataResult<List<Car>>(_carDal.GetAll(c => c.DailyPrice >= min && c.DailyPrice <= max), Messages.CarListed);
        }

        public IDataResult<Car> GetByCarId(int carId)
        {
            return new SuccessDataResult<Car>(_carDal.Get(c => c.CarId == carId));
        }

        public IDataResult<List<Car>> GetCarsByBrandId(int id)
        {
            return new SuccessDataResult<List<Car>>(_carDal.GetAll(c => c.BrandId == id), Messages.CarListedByBrand);
        }

        public IDataResult<List<Car>> GetCarsByColorId(int id)
        {
            return new SuccessDataResult<List<Car>>(_carDal.GetAll(c => c.ColorId == id), Messages.CarListedByColor);
        }

        public IDataResult<List<CarDetailsDto>> GetCarDetails()
        {
            var result = new SuccessDataResult<List<CarDetailsDto>>(_carDal.GetCarDetails(), Messages.CarDetailsListed);
            return result;
        }
        private IResult CheckIfCarCountOfBrandCorrect(int brandId)
        {
            if (brandId == 1)
            {
                var result = _carDal.GetAll(c => c.BrandId == brandId).Count;
                if (result >= 2)
                {
                    return new ErrorResult(Messages.CarCountOfOpelError);
                }
            }
            return new SuccessResult();
        }
        private IResult CheckIfBrandLimitExceded()
        {
            var result = _brandService.GetAll();
            if (result.Data.Count > 15)
            {
                return new ErrorResult();
            }
            return new SuccessResult();
        }
        private IResult CheckCardIdExist(int carId)
        {
            var result = _carDal.GetAll(c => c.CarId == carId);
            if (result != null)
            {
                return new ErrorResult();
            }
            return new SuccessResult();
        }
    }
}

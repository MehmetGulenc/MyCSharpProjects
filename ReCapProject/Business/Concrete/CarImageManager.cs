using Business.Abstract;
using Business.Constants;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Text;
using Core.Utilities.Business;
using Core.Utilities.Helpers.FileHelper;

namespace Business.Concrete
{
    public class CarImageManager : ICarImageService
    {
        ICarImageDal _carImageDal;

        public CarImageManager(ICarImageDal carImageDal)
        {
            _carImageDal = carImageDal;
        }

        public IDataResult<CarImage> GetById(int id)
        {
            return new SuccessDataResult<CarImage>(_carImageDal.Get(i => i.Id == id));
        }
        public IDataResult<List<CarImage>> GetAll()
        {
            return new SuccessDataResult<List<CarImage>>(_carImageDal.GetAll());
        } 

        public IDataResult<List<CarImage>> GetByCarId(int carId)
        {
            var result = _carImageDal.GetAll(i => i.CarId == carId);
            if (result.Count == 0)
            {
                string path = "/images/logo.jpg";
                result.Add(new CarImage { Id = 0, CarId = carId, ImagePath = path, Date = DateTime.Now });
            }

            return new SuccessDataResult<List<CarImage>>(result);
        }
        public IResult Add(IFormFile file, CarImage carImage)
        {
            IResult result = BusinessRules.Run(CheckIfCarImageLimit(carImage.CarId));
            if (result != null)
            {
                return result;
            }

            var imageResult = FileHelper.Upload(file);
            if (!imageResult.Success)
            {
                return new ErrorResult(imageResult.Message);
            }

            carImage.ImagePath = imageResult.Message;
            carImage.Date = DateTime.Now;
            _carImageDal.Add(carImage);
            return new SuccessResult(Messages.CarImageAdded);
        }

        public IResult Update(IFormFile file, CarImage carImage)
        {
            var image = _carImageDal.Get(c => c.Id == carImage.Id);
            if (image == null)
            {
                return new ErrorResult(Messages.CarImageNotFound);
            }
            var updatedFile = FileHelper.Update(file, image.ImagePath);
            if (!updatedFile.Success)
            {
                return new ErrorResult(updatedFile.Message);
            }
            carImage.ImagePath = updatedFile.Message;
            carImage.Date = DateTime.Now;
            _carImageDal.Update(carImage);
            return new SuccessResult(Messages.CarImageUpdated);
        }

        public IResult Delete(CarImage carImage)
        {
            _carImageDal.Delete(carImage);
            return new SuccessResult();
        }

        private IResult CheckIfCarImageLimit(int carId)
        {
            var imageCount = _carImageDal.GetAll(c => c.CarId == carId).Count;

            if (imageCount >= 5)
            {
                return new ErrorResult(Messages.CarImageLimitAchieved);
            }

            return new SuccessResult();
        }
    }
}
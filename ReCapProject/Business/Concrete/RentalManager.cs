using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Business.Abstract;
using Business.Constants;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;

namespace Business.Concrete
{
    public class RentalManager : IRentalService
    {
        private readonly IRentalDal _rentalDal;

        public RentalManager(IRentalDal rentalDal)
        {
            _rentalDal = rentalDal;
        }


        public IDataResult<Rental> GetById(int id)
        {
            return new SuccessDataResult<Rental>(_rentalDal.Get(r => r.Id == id));
        }

        public IResult Add(Rental rental)
        {
            var result = IsAvailableForRent(rental.CarId);
            if (result.Success)
            {
                _rentalDal.Add(rental);
                return new SuccessResult(Messages.CarIsRented);
            }
            return new ErrorResult(result.Message);
        }

        public IResult Update(Rental rental)
        {
            _rentalDal.Update(rental);
            return new SuccessResult();
        }

        public IResult Delete(Rental rental)
        {
            _rentalDal.Delete(rental);
            return new SuccessResult();
        }

        public IDataResult<List<Rental>> GetAll()
        {
            return new SuccessDataResult<List<Rental>>(_rentalDal.GetAll());
        }

        public IResult IsAvailableForRent(int carId)
        {
            if (IsCarEverRented(carId).Success)
            {
                if (IsCarReturned(carId).Success)
                {
                    return new SuccessResult(Messages.CarIsRented);
                }
                return new ErrorResult(Messages.CarNotAvailable);
            }
            return new SuccessResult(Messages.CarIsRented);
        }

        public IResult IsCarEverRented(int carId)
        {
            var result = _rentalDal.GetAll(r => r.CarId == carId).Any();
            if (result == true)
            {
                return new SuccessResult();
            }
            return new ErrorResult();
        }

        public IResult IsCarReturned(int carId)
        {
            var result = _rentalDal.GetAll(r => (r.CarId == carId) && (r.ReturnDate == null)).Any();
            if (result == true)
            {
                return new ErrorResult();
            }
            return new SuccessResult();
        }

    }
}

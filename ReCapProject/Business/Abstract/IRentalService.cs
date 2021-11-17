using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Core.Utilities.Results;
using Entities.Concrete;

namespace Business.Abstract
{
    public interface IRentalService
    {
        
        IResult IsAvailableForRent(int carId);
        IResult IsCarEverRented(int carId);
        IResult IsCarReturned(int carId);
        IDataResult<Rental> GetById(int id);
        IResult Add(Rental rental);
        IDataResult<List<Rental>> GetAll();
    }
}

using OrderingSystem.Clent.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OrderingSystem.Clent.Services
{
    interface IDataService
    {
        List<Dish> GetAllDishes();
    }
}

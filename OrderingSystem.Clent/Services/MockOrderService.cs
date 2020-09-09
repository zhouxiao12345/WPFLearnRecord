using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OrderingSystem.Clent.Services
{
    class MockOrderService : IOrderService
    {
        public void PlaceOrder(List<string> dishes)
        {
            System.IO.File.WriteAllLines(@"F:\3-WPF\Practise\OrderingSystem.Clent\下单详情.txt", dishes.ToArray());
        }
    }
}

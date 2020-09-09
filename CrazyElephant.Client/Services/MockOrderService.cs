using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CrazyElephant.Client.Services
{
    class MockOrderService : IOrderService
    {
        public void PlaceOrder(List<string> dishes)
        {
            System.IO.File.WriteAllLines(@"F:\3-WPF\lesson5\order.txt", dishes.ToArray());
        }
    }
}

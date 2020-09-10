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
            System.IO.File.WriteAllLines(@"F:\3-WPF\lesson5\CrazyElephant.Client\订单详情.txt", dishes.ToArray());
        }
    }
}

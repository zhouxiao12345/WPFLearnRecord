using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TicketGrabSystem.Clent.Service
{
    class MockOrderService : IOrderService
    {
        public void PlaceOrder(List<string> trains)
        {
            System.IO.File.WriteAllLines(@"F:\3-WPF\Practise\TicketGrabSystem.Clent\下单详情.txt", trains.ToArray());
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TicketGrabSystem.Clent.Service
{
    interface IOrderService
    {
        void PlaceOrder(List<string> trains);
    }
}

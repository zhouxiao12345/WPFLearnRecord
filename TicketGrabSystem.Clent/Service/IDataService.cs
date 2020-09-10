using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TicketGrabSystem.Clent.Model;

namespace TicketGrabSystem.Clent.Service
{
    interface IDataService
    {
        List<Train> GetAllTrains();
    }
}

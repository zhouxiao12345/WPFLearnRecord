using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
using TicketGrabSystem.Clent.Model;

namespace TicketGrabSystem.Clent.Service
{
    class XmlDataService : IDataService
    {
        public List<Train> GetAllTrains()
        {
            List<Train> trainList = new List<Train>();
            string xmlFileName = System.IO.Path.Combine(Environment.CurrentDirectory, @"Data\Data.xml");
            XDocument xDoc = XDocument.Load(xmlFileName);
            var trains = xDoc.Descendants("Train");
            foreach (var t in trains)
            {
                Train train = new Train();
                train.Date = t.Element("Date").Value;
                train.Number = t.Element("Number").Value;
                train.Time = t.Element("Time").Value;
                train.StartStation = t.Element("StartStation").Value;
                train.Terminal = t.Element("Terminal").Value;
                train.Money = double.Parse(t.Element("Money").Value);
                trainList.Add(train);
            }

            return trainList;
        }
    }
}

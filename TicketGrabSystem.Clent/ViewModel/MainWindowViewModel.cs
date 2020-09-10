using Prism.Commands;
using Prism.Mvvm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using TicketGrabSystem.Clent.Service;
using TicketGrabSystem.Clent.Model;

namespace TicketGrabSystem.Clent.ViewModel
{
    class MainWindowViewModel:BindableBase
    {
        public DelegateCommand PlaceOrderCommand { get; set; }
        public DelegateCommand SelectItemCommand { get; set; }

        private int count;

        public int Count
        {
            get { return count; }
            set
            {
                count = value;
                this.RaisePropertyChanged("Count");
            }
        }

        private TicketSoftware ticketSoftware;

        public TicketSoftware TicketSoftware
        {
            get { return ticketSoftware; }
            set
            {
                ticketSoftware = value;
                this.RaisePropertyChanged("TicketSoftware");
            }
        }

        private List<TicketItemViewModel> ticketItem;

        public List<TicketItemViewModel> TicketItem
        {
            get { return ticketItem; }
            set
            {
                ticketItem = value;
                this.RaisePropertyChanged("TicketItem");
            }
        }

        public MainWindowViewModel()
        {
            this.LoadTicketSoftware();
            this.LoadTicketItem();
            this.PlaceOrderCommand = new DelegateCommand(new Action(this.PlaceOrderCommandExecute));
            this.SelectItemCommand = new DelegateCommand(new Action(this.SelectItemCommandExecute));
        }

        private void LoadTicketSoftware()
        {
            this.TicketSoftware = new TicketSoftware();
            this.TicketSoftware.Name = "智行火车票";
            this.TicketSoftware.Hotline = "021-60668666";
        }

        private void LoadTicketItem()
        {
            XmlDataService xds = new XmlDataService();
            var trains = xds.GetAllTrains();
            this.TicketItem = new List<TicketItemViewModel>();
            foreach (var train in trains)
            {
                TicketItemViewModel tivm = new TicketItemViewModel();
                tivm.Train = train;
                this.ticketItem.Add(tivm);
            }
        }

        private void PlaceOrderCommandExecute()
        {
            var selectedTrains = this.TicketItem.Where(i => i.IsSelected == true).Select(i => i.Train.Number).ToList();
            IOrderService orderService = new MockOrderService();
            orderService.PlaceOrder(selectedTrains);
            MessageBox.Show("订票成功");
        }

        private void SelectItemCommandExecute()
        {
            this.Count = this.TicketItem.Count(i => i.IsSelected == true);
        }
    }
}

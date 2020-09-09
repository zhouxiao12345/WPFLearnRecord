using Prism.Mvvm;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TicketGrabSystem.Clent.Model;

namespace TicketGrabSystem.Clent.ViewModel
{
    class TicketItemViewModel:BindableBase
    {
        public Train Train { get; set; }

        private bool isSelected;

        public bool IsSelected
        {
            get { return isSelected; }
            set
            {
                isSelected = value;
                this.RaisePropertyChanged("IsSelected");
            }
        }

    }
}

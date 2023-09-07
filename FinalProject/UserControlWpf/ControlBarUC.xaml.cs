using FinalProject.ViewModel;
using System.Windows.Controls;

namespace FinalProject.UserControlWpf
{
    /// <summary>
    /// Interaction logic for ControlBarUC.xaml
    /// </summary>
    public partial class ControlBarUC : UserControl
    {
        public ControlBarViewModel viewModel { get; set; }

        public ControlBarUC()
        {
            InitializeComponent();
            this.DataContext = viewModel = new ControlBarViewModel();
        }

    }
}

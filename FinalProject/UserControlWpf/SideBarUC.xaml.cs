using System.Windows;
using System.Windows.Controls;

namespace FinalProject.UserControlWpf
{
    /// <summary>
    /// Interaction logic for SideBarUC.xaml
    /// </summary>
    public partial class SideBarUC : UserControl
    {
        public static readonly DependencyProperty CurrentPageProperty =
    DependencyProperty.Register("CurrentPage", typeof(string), typeof(SideBarUC));

        public string CurrentPage
        {
            get { return (string)GetValue(CurrentPageProperty); }
            set { SetValue(CurrentPageProperty, value); }
        }

        public SideBarUC()
        {
            InitializeComponent();
        }
    }
}

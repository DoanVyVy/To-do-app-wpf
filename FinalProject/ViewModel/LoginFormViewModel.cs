using FinalProject.Model;
using FinalProject.View;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace FinalProject.ViewModel
{
    public class LoginFormViewModel : BaseViewModel
    {
        public static bool IsLogin { get; set; }
        private string _username;
        private string _password;

        public string Username
        {
            get => _username; set
            {
                _username = value;
                OnPropertyChanged();
            }
        }
        public string Password
        {
            get => _password; set
            {
                _password = value;
                OnPropertyChanged();
            }
        }

        public static int UserId;
        public static string DisplayName;

        public ICommand LoginCommand { get; set; }
        public ICommand ExitAppCommand { get; set; }
        public ICommand PasswordChangedCommand { get; set; }
        public ICommand OpenRegisterFormCommand { get; set; }
        public LoginFormViewModel()
        {
            IsLogin = false;

            LoginCommand = new RelayCommand<Window>((p) => { return true; }, (p) => { login(p); });

            ExitAppCommand = new RelayCommand<Window>((p) => { return true; }, (p) =>
            {
                Application.Current.Shutdown();
            });

            PasswordChangedCommand = new RelayCommand<PasswordBox>((p) => { return true; }, (p) =>
            {
                Password = p.Password;
            });
            OpenRegisterFormCommand = new RelayCommand<Window>((p) => { return true; }, (p) =>
            {
                RegisterForm registerForm = new RegisterForm();
                registerForm.ShowDialog();
                p.Close();
            });
        }

        private void login(Window p)
        {
            if (p == null)
            {
                return;
            }

            var account = DataProvider.Ins.data.users.Where((x) => x.username == Username && x.password == Password).Count();

            if (account > 0)
            {
                var query = from user in DataProvider.Ins.data.users where user.username == Username select user.user_id;
                UserId = query.FirstOrDefault();
                var getDisplayName = DataProvider.Ins.data.users.FirstOrDefault(x => x.username == Username);
                DisplayName = getDisplayName.display_name;
                IsLogin = true;
                MainWindow mainWindow = new MainWindow();
                p.Close();
                mainWindow.Show();
            }
            else
            {
                MessageBox.Show("Login failed. Please check your username and password!", "Login Error", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }

    }
}

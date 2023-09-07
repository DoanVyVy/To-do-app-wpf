using FinalProject.Model;
using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace FinalProject.ViewModel
{
    public class RegisterFormViewModel : BaseViewModel
    {
        private string _username;
        private string _password;
        private string _confirmPassword;
        private string _displayName;

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
        public string ConfirmPassword
        {
            get => _confirmPassword; set
            {
                _confirmPassword = value;
                OnPropertyChanged();
            }
        }

        public string DisplayName
        {
            get => _displayName; set
            {
                _displayName = value;
                OnPropertyChanged();
            }
        }

        public ICommand RegisterCommand { get; set; }
        public ICommand ExitAppCommand { get; set; }
        public ICommand PasswordChangedCommand { get; set; }
        public ICommand ConfirmPasswordChangedCommand { get; set; }
        public ICommand OpenLoginFormCommand { get; set; }

        public RegisterFormViewModel()
        {
            RegisterCommand = new RelayCommand<Window>(_ => true, p => register(p));
            PasswordChangedCommand = new RelayCommand<PasswordBox>(_ => true, p => Password = p.Password);
            ConfirmPasswordChangedCommand = new RelayCommand<PasswordBox>(_ => true, p => ConfirmPassword = p.Password);
            ExitAppCommand = new RelayCommand<Window>(_ => true, p => { Application.Current.Shutdown(); });
            OpenLoginFormCommand = new RelayCommand<Window>(_ => true, p =>
            {
                LoginForm loginForm = new LoginForm();
                loginForm.ShowDialog();
                p.Close();
            });
        }

        public void register(Window p)
        {
            if (p == null)
            {
                return;
            }

            var existingUser = DataProvider.Ins.data.users.Any(x => x.username == Username);

            if (!existingUser)
            {
                if (Password.Equals(ConfirmPassword))
                {
                    var newUser = new user
                    {
                        username = Username,
                        password = Password,
                        display_name = DisplayName,
                        created_at = DateTime.Now
                    };
                    DataProvider.Ins.data.users.InsertOnSubmit(newUser);
                    DataProvider.Ins.data.SubmitChanges();
                    LoginForm loginForm = new LoginForm();
                    p.Close();
                    loginForm.Show();
                }
                else
                {
                    MessageBox.Show("Register failed. Please check your confirm password!", "Register Error", MessageBoxButton.OK, MessageBoxImage.Information);
                }
            }
            else
            {
                MessageBox.Show("Register failed. Please check your username and password!", "Register Error", MessageBoxButton.OK, MessageBoxImage.Information);
            }
        }
    }
}

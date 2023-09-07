using FinalProject.Model;
using FinalProject.View;
using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;


namespace FinalProject.ViewModel
{
    public class MainViewModel : BaseViewModel
    {
        private UserControl _currentPage;
        private int amountOfMyDay;
        private int amountOfImportant;
        private int amountOfPlanned;
        private int amountOfTasks;
        private string displayName;
        private Visibility _myDayVisibility;
        public Visibility MyDayVisibility
        {
            get { return _myDayVisibility; }
            set
            {
                _myDayVisibility = value;
                OnPropertyChanged();
            }
        }

        private Visibility _importantVisibility;
        public Visibility ImportantVisibility
        {
            get { return _importantVisibility; }
            set
            {
                _importantVisibility = value;
                OnPropertyChanged();
            }
        }

        private Visibility _plannedVisibility;
        public Visibility PlannedVisibility
        {
            get { return _plannedVisibility; }
            set
            {
                _plannedVisibility = value;
                OnPropertyChanged();
            }
        }

        private Visibility _tasksVisibility;
        public Visibility TasksVisibility
        {
            get { return _tasksVisibility; }
            set
            {
                _tasksVisibility = value;
                OnPropertyChanged();
            }
        }

        public UserControl CurrentPage
        {
            get { return _currentPage; }
            set
            {
                _currentPage = value;
                OnPropertyChanged();
            }
        }
        public int AmountOfMyDay
        {
            get => amountOfMyDay; set
            {
                amountOfMyDay = value;
                OnPropertyChanged();
            }
        }
        public int AmountOfImportant
        {
            get => amountOfImportant; set
            {
                amountOfImportant = value;
                OnPropertyChanged();
            }
        }
        public int AmountOfPlanned
        {
            get => amountOfPlanned; set
            {
                amountOfPlanned = value;
                OnPropertyChanged();
            }
        }
        public int AmountOfTasks
        {
            get => amountOfTasks; set
            {
                amountOfTasks = value;
                OnPropertyChanged();
            }
        }
        public string DisplayName
        {
            get => displayName; set
            {
                displayName = value;
                OnPropertyChanged();
            }
        }
        private bool isSelectedMyDay;
        public bool IsSelectedMyDay
        {
            get { return isSelectedMyDay; }
            set
            {
                isSelectedMyDay = value;
                OnPropertyChanged(nameof(IsSelectedMyDay));
            }
        }

        private bool isSelectedImportant;
        public bool IsSelectedImportant
        {
            get { return isSelectedImportant; }
            set
            {
                isSelectedImportant = value;
                OnPropertyChanged(nameof(IsSelectedImportant));
            }
        }

        private bool isSelectedPlanned;
        public bool IsSelectedPlanned
        {
            get { return isSelectedPlanned; }
            set
            {
                isSelectedPlanned = value;
                OnPropertyChanged(nameof(IsSelectedPlanned));
            }
        }



        public ICommand NavigateCommand { get; set; }
        public ICommand LoadedWindowCommand { get; set; }
        public ICommand LogoutCommand { get; set; }


        public MainViewModel()
        {

            LoadedWindowCommand = new RelayCommand<Window>((p) => { return true; }, (p) =>
            {
                CurrentPage = new MyDay();

                DateTime today = DateTime.Now.Date;
                DisplayName = LoginFormViewModel.DisplayName;
                AmountOfMyDay = DataProvider.Ins.data.tasks.Where((x) => x.user_id == LoginFormViewModel.UserId && x.due_date.Value.Date == today).Count();
                AmountOfImportant = DataProvider.Ins.data.tasks.Where((x) => x.user_id == LoginFormViewModel.UserId && x.important == true).Count();
                AmountOfPlanned = DataProvider.Ins.data.tasks.Where((x) => x.user_id == LoginFormViewModel.UserId && x.due_date != null).Count();
                AmountOfTasks = DataProvider.Ins.data.tasks.Where((x) => x.user_id == LoginFormViewModel.UserId).Count();

                DataProvider.DataChanged += DataProvider_DataChanged;
            });


            NavigateCommand = new RelayCommand<Type>((p) => { return p == null ? false : true; }, (p) =>
            {
                CurrentPage = (UserControl)Activator.CreateInstance(p);
            });

            LogoutCommand = new RelayCommand<Window>((p) => { return p == null ? false : true; }, (p) =>
            {
                LoginFormViewModel.IsLogin = false;
                LoginFormViewModel.UserId = -1;
                LoginFormViewModel.DisplayName = string.Empty;
                LoginForm loginForm = new LoginForm();
                p.Close();
                loginForm.ShowDialog();
            });
        }

        private void DataProvider_DataChanged(object sender, EventArgs e)
        {
            DateTime today = DateTime.Now.Date;
            AmountOfMyDay = DataProvider.Ins.data.tasks.Where((x) => x.user_id == LoginFormViewModel.UserId && x.due_date.Value.Date == today).Count();
            AmountOfImportant = DataProvider.Ins.data.tasks.Where((x) => x.user_id == LoginFormViewModel.UserId && x.important == true).Count();
            AmountOfPlanned = DataProvider.Ins.data.tasks.Where((x) => x.user_id == LoginFormViewModel.UserId && x.due_date != null).Count();
            AmountOfTasks = DataProvider.Ins.data.tasks.Where((x) => x.user_id == LoginFormViewModel.UserId).Count();
        }

    }
}

using FinalProject.Model;
using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace FinalProject.ViewModel
{
    public class TasksViewModel : BaseViewModel
    {
        private DateTime currentDate;

        public DateTime CurrentDate
        {
            get => currentDate;
            set
            {
                currentDate = value;
                OnPropertyChanged();
            }
        }
        private List<task> tasks;


        public List<task> Tasks
        {
            get => tasks;
            set
            {
                tasks = value;
                OnPropertyChanged();
            }
        }

        private bool isSelectedRow;
        public bool IsSelectedRow
        {
            get { return isSelectedRow; }
            set
            {
                isSelectedRow = value;
                OnPropertyChanged(nameof(IsSelectedRow));
            }
        }

        private string searchKeyword;
        public string SearchKeyword
        {
            get => searchKeyword;
            set
            {
                searchKeyword = value;
                OnPropertyChanged();
                SearchCommand.Execute(null); // Trigger search when the search keyword changes
            }
        }
        public task SelectedTask { get; set; }
        public ICommand DeleteCommand { get; set; }
        public ICommand AddCommand { get; set; }
        public ICommand SaveCommand { get; set; }
        public ICommand LoadDataCommand { get; set; }
        public ICommand SearchCommand { get; set; }

        public TasksViewModel()
        {
            CurrentDate = DateTime.Now;

            LoadDataCommand = new RelayCommand<UserControl>((p) => { return true; }, (p) => LoadData());

            DeleteCommand = new RelayCommand<task>((t) => { return true; }, (t) =>
            {
                if (SelectedTask != null)
                {
                    MessageBoxResult result = MessageBox.Show("Bạn có chắc chắn muốn xóa dữ liệu?", "Xác nhận xóa", MessageBoxButton.YesNo, MessageBoxImage.Question);
                    if (result == MessageBoxResult.Yes)
                    {
                        DataProvider.Ins.data.GetTable<task>().DeleteOnSubmit(SelectedTask);
                        DataProvider.Ins.data.SubmitChanges();
                        DataProvider.Ins.UpdateData();
                        LoadData();
                    }

                }
            });

            AddCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                task newTask = new task
                {
                    user_id = LoginFormViewModel.UserId,
                    created_at = DateTime.Now,
                };

                DataProvider.Ins.data.GetTable<task>().InsertOnSubmit(newTask);
                DataProvider.Ins.data.SubmitChanges();
                DataProvider.Ins.UpdateData();
                LoadData();
            });

            SaveCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                DataProvider.Ins.data.SubmitChanges();
                DataProvider.Ins.UpdateData();
            });

            SearchCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                LoadData();
            });
        }

        private void LoadData()
        {
            DateTime today = DateTime.Now.Date;

            Table<task> taskTb = DataProvider.Ins.data.GetTable<task>();
            Table<user> userTb = DataProvider.Ins.data.GetTable<user>();

            var query = from t in taskTb
                        join u in userTb on t.user_id equals u.user_id
                        where u.user_id == LoginFormViewModel.UserId
                        select t;

            if (!string.IsNullOrWhiteSpace(SearchKeyword))
            {
                query = query.Where(t => t.title.Contains(SearchKeyword));
            }


            Tasks = query.ToList();
        }
    }
}

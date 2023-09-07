using System;

namespace FinalProject.Model
{
    public class DataProvider
    {
        private static DataProvider _ins;
        public static DataProvider Ins
        {
            get
            {
                if (_ins == null)
                {
                    _ins = new DataProvider();
                }
                return _ins;
            }
            set
            {
                _ins = value;
            }
        }

        public DataToDoAppDataContext data { get; set; }
        public static event EventHandler DataChanged;

        public DataProvider()
        {
            data = new DataToDoAppDataContext();
        }

        public void UpdateData()
        {
            DataChanged?.Invoke(this, EventArgs.Empty);
        }
    }
}

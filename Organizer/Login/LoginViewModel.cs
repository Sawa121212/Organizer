using System;
using System.IO;
using System.Windows;
using System.Windows.Input;
using Organizer.Common.ObservableModels;
using Organizer.MainUI;
using Prism.Commands;

namespace Organizer.Login
{
    public class LoginViewModel : ObservableObject
    {
        private string _lastName;
        private string _firstName;

        public LoginViewModel(bool accessGranted)
        {
            FirstName = string.Empty;
            LastName = string.Empty;

            RegisterCommand = new DelegateCommand(Register);
        }

        private void Register()
        {
             string writePath = @"goon.up";
            try
            {
                using (var streamWriter = new StreamWriter(writePath, append: true))
                {
                    streamWriter.WriteLine("hjdd8qb1871teg1o9e8yb19yve912ed");
                }
                if (File.Exists(@"goon.up"))
                {
                    Window mainwWindow = new MainWindow();
                    App.Current.MainWindow.Close();
                    mainwWindow.Show();
                }
            }
            catch (Exception e)
            {
                MessageBox.Show("Ошибка: " + e.Message);
            }
        }

        public string LastName
        {
            get => _lastName;
            set => Set(ref _lastName, value);
        }

        public string FirstName
        {
            get => _firstName;
            set => Set(ref _firstName, value);
        }

        public ICommand RegisterCommand { get; }
    }
}

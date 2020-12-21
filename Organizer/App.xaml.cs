using System.IO;
using System.Windows;
using Organizer.MainUI;

namespace Organizer
{
    /// <summary>
    /// Interação lógica para App.xaml
    /// </summary>
    public partial class App : Application
    {
        private void ApplicationStart(object sender, StartupEventArgs e)
        {
            Window login = new Login.Login();

            if (File.Exists(@"goon.up"))
            {
                Window mainWindow = new MainWindow();
                login.Close();
                mainWindow.Show();
            }
            else
            {
                login.Show();
            }
        }
    }
}

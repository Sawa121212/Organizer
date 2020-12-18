using System.Windows;
using System.Windows.Controls;
using Organizer.OpenDialogs.Modules;

namespace Organizer.ExcelTable
{
    /// <summary>
    /// Интерфейс сравнения Excel таблиц
    /// </summary>
    public partial class ExcelTable : UserControl
    {
        public ExcelTable()
        {
            InitializeComponent();
        }

        // Импорт данных из Excel-файла (не более 5 столбцов и любое количество строк)
        private void OpenExcelTable(object sender, RoutedEventArgs e)
        {
            ExcelDialogService excelFile1 = new ExcelDialogService();
            excelFile1.OpenFileDialogExcel(ListBox1, 1000, 1);
        }

        private void OpenExcelTableSecond(object sender, RoutedEventArgs e)
        {
            ExcelDialogService excelFile2 = new ExcelDialogService();
            excelFile2.OpenFileDialogExcel(ListBox2, 1000, 1);
        }

        private void CompareExcelTables(object sender, RoutedEventArgs e)
        {
            throw new System.NotImplementedException();
        }

        private void ConvertToExcelFile(object sender, RoutedEventArgs e)
        {
            throw new System.NotImplementedException();
        }
    }
}

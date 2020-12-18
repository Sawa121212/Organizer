using System;
using System.Windows.Forms;
using Organizer.Modules;
using Excel = Microsoft.Office.Interop.Excel;
using ListBox = System.Windows.Controls.ListBox;

namespace Organizer.OpenDialogs.Modules
{
    class ExcelDialogService
    {
        private readonly bool _firstTableParsing = false;
        private readonly bool _secondTableParsing = false;
        public bool OpenFileDialogExcel(ListBox listBoxName, int row, int col)
        {   
            string[,] list = new string[row, 5];

            // Выбрать путь и имя файла в диалоговом окне
            OpenFileDialog ofd = new OpenFileDialog();
            // Задаем расширение имени файла по умолчанию (открывается папка с программой)
            ofd.DefaultExt = "*.xls;*.xlsx";
            // Задаем строку фильтра имен файлов, которая определяет варианты
            ofd.Filter = "Файл Excel (Spisok.xlsx)|*.xlsx";
            // Задаем заголовок диалогового окна
            ofd.Title = "Выберите файл базы данных";
            if (!(ofd.ShowDialog() == DialogResult.OK)) { return false; } // если файл БД не выбран -> Выход

            Excel.Application ObjWorkExcel = new Excel.Application();
            Excel.Workbook ObjWorkBook = ObjWorkExcel.Workbooks.Open(ofd.FileName);
            Excel.Worksheet ObjWorkSheet = (Excel.Worksheet)ObjWorkBook.Sheets[1]; //получить 1-й лист
            var lastCell = ObjWorkSheet.Cells.SpecialCells(Excel.XlCellType.xlCellTypeLastCell);//последнюю ячейку
            // размеры базы
            int lastColumn = (int)lastCell.Column;
            int lastRow = (int)lastCell.Row;
            // Перенос в промежуточный массив класса Form1: string[,] list = new string[50, 5]; 
            for (int j = 0; j < col; j++) //по всем колонкам
                for (int i = 0; i < lastRow; i++) // по всем строкам
                    list[i, j] = ObjWorkSheet.Cells[i + 1, j + 1].Text.ToString(); //считываем данные
            ObjWorkBook.Close(false, Type.Missing, Type.Missing); //закрыть не сохраняя
            ObjWorkExcel.Quit(); // выйти из Excel
            GC.Collect(); // убрать за собой
            //return lastRow;

            listBoxName.Items.Clear();
            // s="";
            for (int i = 0; i < lastRow; i++) // по всем строкам
            {
                string s = "";
                for (int j = 0; j < 1; j++) //по всем колонкам
                    s += "  " + list[i, j];
                listBoxName.Items.Add(s);
            }

            if (_firstTableParsing)
            {
                CompareExcelTables compareExcel = new CompareExcelTables();
                compareExcel.CreateFirstList(list, col, row);
            }
            if (_secondTableParsing)
            {
                CompareExcelTables compareExcel = new CompareExcelTables();
                compareExcel.CreateSecondList(list, col, row);
            }

            return true;
        }
    }
}

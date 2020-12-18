using System.Windows.Documents;
using System;
using Organizer.Modules;
using Excel = Microsoft.Office.Interop.Excel;

namespace Organizer.Modules
{
    class CompareExcelTables
    {
        readonly string[,] firstExcelTable = new string[10000, 10000];
        readonly string[,] secondExcelTable = new string[10000, 10000];
        public bool CreateFirstList(string[,] listName, int row, int col)
        {
            

            for (int i = 0; i < row; i++) // по всем строкам
            {
                for (int j = 0; j < col; j++) //по всем колонкам
                    firstExcelTable[i, j] += listName[i, j];
            }
            return true;
        }
        public bool CreateSecondList(string[,] listName, int row, int col)
        {
            for (int i = 0; i < row; i++) // по всем строкам
            {
                for (int j = 0; j < col; j++) //по всем колонкам
                    secondExcelTable[i, j] += listName[i, j];
            }
            return true;
        }

        public string[,] GetCompareList(string[,] listName, int row, int col)
        {
            //Объявляем приложение
            Excel.Application ex = new Microsoft.Office.Interop.Excel.Application();
            //Отобразить Excel
            ex.Visible = true;
            //Количество листов в рабочей книге
            ex.SheetsInNewWorkbook = 2;
            //Добавить рабочую книгу
            Excel.Workbook workBook = ex.Workbooks.Add(Type.Missing);
            //Отключить отображение окон с сообщениями
            ex.DisplayAlerts = false;
            //Получаем первый лист документа (счет начинается с 1)
            Excel.Worksheet sheet = (Excel.Worksheet)ex.Worksheets.get_Item(1);
            //Название листа (вкладки снизу)
            sheet.Name = "Результат сравнения";
            //Пример заполнения ячеек
            for (int i = 1; i <= row; i++)
            {
                for (int j = 1; j < col; j++)
                    sheet.Cells[i, j] = listName[i, j];
            }

            ex.Application.ActiveWorkbook.SaveAs("doc.xlsx", Type.Missing,
                Type.Missing, Type.Missing, Type.Missing, Type.Missing, Excel.XlSaveAsAccessMode.xlNoChange,
                Type.Missing, Type.Missing, Type.Missing, Type.Missing, Type.Missing);

            return listName;
        }
    }
}

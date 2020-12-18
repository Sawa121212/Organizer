﻿namespace Organizer.OpenDialogs.Interfaces
{
    interface IDialogService
    {
        void ShowMessage(string message);   // показ сообщения
        void ShowErrorMessage();     // показ сообщения
        string FilePath { get; set; }   // путь к выбранному файлу
        bool OpenFileDialog();  // открытие файла
        bool SaveFileDialog();  // сохранение файла

        //bool OpenFileDialogExcel(ListBox listBoxName, int row, int col);  // открытие файла
    }
}
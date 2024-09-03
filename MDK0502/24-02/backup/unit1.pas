unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtDlgs, ExtCtrls,
  Buttons, Grids, Unit2;

type
  Contacts = record
    Name: string[100];
    Telephon: string[20];
    Note: string[20];
  end;

type

  { TForm1 }

  TForm1 = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    StringGrid1: TStringGrid;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure StringGrid1GetEditMask(Sender: TObject; ACol, ARow: Integer;
      var Value: string);
  private

  public

  end;

var
  Form1: TForm1;
  adres: String;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  //очищаем поля, если там что-то есть:
  Form2.Edit1.Text:= '';
  Form2.Edit2.Text:= '';
  //устанавливаем ModalResult редактора в mrNone:
  Form2.ModalResult:= mrNone;
  //теперь выводим форму:
  Form2.ShowModal;
  //если пользователь ничего не ввел - выходим:
  if (Form2.Edit1.Text= '') or (Form2.Edit2.Text= '') then exit;
  //если пользователь не нажал "Сохранить" - выходим:
  if Form2.ModalResult <> mrOk then exit;
  //иначе добавляем в сетку строку, и заполняем её:
  StringGrid1.RowCount:= StringGrid1.RowCount + 1;
  StringGrid1.Cells[0, StringGrid1.RowCount-1]:= Form2.Edit1.Text;
  StringGrid1.Cells[1, StringGrid1.RowCount-1]:= Form2.Edit2.Text;
  StringGrid1.Cells[2, StringGrid1.RowCount-1]:= Form2.ComboBox1.Text;

end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  //если данных в сетке нет - просто выходим:
  if StringGrid1.RowCount = 1 then exit;
  //иначе записываем данные в форму редактора:
  Form2.Edit1.Text:= StringGrid1.Cells[0, StringGrid1.Row];
  Form2.Edit2.Text:= StringGrid1.Cells[1, StringGrid1.Row];
  Form2.ComboBox1.Text:= StringGrid1.Cells[2, StringGrid1.Row];
  //устанавливаем ModalResult редактора в mrNone:
  Form2.ModalResult:= mrNone;
  //теперь выводим форму:
  Form2.ShowModal;
  //сохраняем в сетку возможные изменения,
  //если пользователь нажал "Сохранить":
  if Form2.ModalResult = mrOk then begin
    StringGrid1.Cells[0, StringGrid1.Row]:= Form2.Edit1.Text;
    StringGrid1.Cells[1, StringGrid1.Row]:= Form2.Edit2.Text;
    StringGrid1.Cells[2, StringGrid1.Row]:= Form2.ComboBox1.Text;
  end;
end;

procedure TForm1.StringGrid1GetEditMask(Sender: TObject; ACol, ARow: Integer;
  var Value: string);
begin
  if Acol = 2 then Value:= '7(999)99-99-99';
end;


procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
var
  MyCont: Contacts; //для очередной записи
  f: file of Contacts; //файл данных
  i: integer; //счетчик цикла
begin
  //если строки данных пусты, просто выходим:
  if StringGrid1.RowCount = 1 then exit;
  //иначе открываем файл для записи:
  try
    AssignFile(f, adres + 'telephones.dat');
    Rewrite(f);
    //теперь цикл - от первой до последней записи сетки:
    for i:= 1 to StringGrid1.RowCount-1 do begin
      //получаем данные текущей записи:
      MyCont.Name:= StringGrid1.Cells[0, i];
      MyCont.Telephon:= StringGrid1.Cells[1, i];
      MyCont.Note:= StringGrid1.Cells[2, i];
      //записываем их:
      Write(f, MyCont);
    end;
  finally
    CloseFile(f);
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
var
  MyCont: Contacts; //для очередной записи
  f: file of Contacts; //файл данных
  i: integer; //счетчик цикла
begin
  //сначала получим адрес программы:
  adres:= ExtractFilePath(ParamStr(0));
  //настроим сетку:
  StringGrid1.Cells[0, 0]:= 'Имя';
  StringGrid1.Cells[1, 0]:= 'Телефон';
  StringGrid1.Cells[2, 0]:= 'Примечание';
  StringGrid1.ColWidths[0]:= 365;
  StringGrid1.ColWidths[1]:= 150;
  StringGrid1.ColWidths[2]:= 150;
  //если файла данных нет, просто выходим:
  if not FileExists(adres + 'telephones.dat') then exit;
  //иначе файл есть, открываем его для чтения и
  //считываем данные в сетку:
  try
    AssignFile(f, adres + 'telephones.dat');
    Reset(f);
    //теперь цикл - от первой до последней записи сетки:
    while not Eof(f) do begin
      //считываем новую запись:
      Read(f, MyCont);
      //добавляем в сетку новую строку, и заполняем её:
        StringGrid1.RowCount:= StringGrid1.RowCount + 1;
        StringGrid1.Cells[0, StringGrid1.RowCount-1]:= MyCont.Name;
        StringGrid1.Cells[1, StringGrid1.RowCount-1]:= MyCont.Telephon;
        StringGrid1.Cells[2, StringGrid1.RowCount-1]:= MyCont.Note;
    end;
  finally
    CloseFile(f);
  end;
end;

end.


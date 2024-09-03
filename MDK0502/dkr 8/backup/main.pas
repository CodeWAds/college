unit Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtDlgs,
  Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    ButtonCount: TButton;
    CalculatorDialog1: TCalculatorDialog;
    ComboBoxChoiceOption: TComboBox;
    EditQuantityDays: TEdit;
    EditPercent: TEdit;
    EditStartValue: TEdit;
    LabelChoiceOption: TLabel;
    LabelQuantityDays: TLabel;
    LabelPercent: TLabel;
    LabelResult: TLabel;
    LabelStartValue: TLabel;
    LabelStartValue1: TLabel;
    MemoResult: TMemo;
    procedure ButtonCountClick(Sender: TObject);
    procedure ComboBoxChoiceOptionChange(Sender: TObject);
    procedure EditPercentChange(Sender: TObject);
    procedure EditQuantityDaysChange(Sender: TObject);
    procedure EditStartValueChange(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  precentOption: String;
  Days: Integer;
  Precent, startSum, res, endSum: Double;

implementation

{$R *.lfm}

{ TForm1 }
//Вид процентов
procedure TForm1.ComboBoxChoiceOptionChange(Sender: TObject);
begin
   precentOption := ComboBoxChoiceOption.Text;
end;
//Рассчет сложных процентов
function CalculationDifficult(startSum, Precent: Double; Days: Integer):Double;
begin
     res:= startSum * power((1 + (Precent/100)/365),Days);
     CalculationDifficult := res;
end;
//Рассчет простых процентов
function CalculationSimple(startSum, Precent: Double; Days: Integer):Double;
begin
     res:= (startSum * Precent * Days / 365) / 100;
     CalculationSimple := res;
end;

//Начать рассчеты
procedure TForm1.ButtonCountClick(Sender: TObject);

begin
if (EditPercent.Text = '')and(EditQuantityDays.Text='')and(EditStartValue.Text='')
   then begin
   MemoResult.Text := 'Заполните все поля';
   exit;
   end;
//Обработка исключения, если пользователь введёт неверные данные
try
  Precent := StrToFloat(EditPercent.Text);
  Days := StrToInt(EditQuantityDays.Text);
  startSum := StrToFloat(EditStartValue.Text);
except begin
  MemoResult.Text := 'Некорректный ввод';
  exit;
   end;
   end;
   if (precentOption = 'Простые') then
      endSum := CalculationSimple(startSum, Precent, Days)+startSum
      else if (precentOption = 'Сложные') then
         endSum := CalculationDifficult(startSum, Precent, Days)
         else
         begin
         MemoResult.Text := 'Ошибка подсчета';
         exit;
         end;
   MemoResult.Text := 'Итоговый баланс: '+FloatToStr(round(endSum))+LineEnding
   +'Всего процентов: '+ FloatToStr(round(endSum-startSum))+LineEnding
   +'Начальный баланс: '+ FloatToStr(startSum);
end;

//% годовых
procedure TForm1.EditPercentChange(Sender: TObject);
begin
   if EditPercent.Text = '' then exit;
end;

//Количество дней
procedure TForm1.EditQuantityDaysChange(Sender: TObject);
begin
   if EditQuantityDays.Text = '' then exit;
end;

// Начальная сумма
procedure TForm1.EditStartValueChange(Sender: TObject);
begin
   if EditStartValue.Text = '' then exit;
end;

end.


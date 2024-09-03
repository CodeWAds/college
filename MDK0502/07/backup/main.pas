unit Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls, Math;

type

  { TfCalculator }

  TfCalculator = class(TForm)
    Output: TEdit;
    equal: TButton;
    bricksBackground: TImage;
    null: TButton;
    cleanEntry: TButton;
    Clean: TButton;
    plus: TButton;
    comma: TButton;
    two: TButton;
    one: TButton;
    multiplication: TButton;
    five: TButton;
    minus: TButton;
    six: TButton;
    seven: TButton;
    eight: TButton;
    nine: TButton;
    division: TButton;
    four: TButton;
    three: TButton;
    sqr: TButton;
    divisionOf1: TButton;
    Sqrt: TButton;
    removeElement: TButton;
    Panel1: TPanel;
    procedure CleanClick(Sender: TObject);
    procedure cleanEntryClick(Sender: TObject);
    procedure ClickButton(Sender: TObject);
    procedure divisionOf1Click(Sender: TObject);
    procedure removeElementClick(Sender: TObject);
    procedure ClickAct(Sender: TObject);
    procedure ClickEqual(Sender:TObject);
    procedure ClickSqrt(Sender: TObject);
    procedure sqrClick(Sender: TObject);

  private

  public

  end;

var
  fCalculator: TfCalculator;
  x, y, res : Double;
  cntComm : integer;
  act : String;

implementation

{$R *.lfm}

{ TfCalculator }

//Очистка текущего значения из памяти
procedure TfCalculator.cleanEntryClick(Sender: TObject);
begin
     Output.Text := '0';
end;
//Очистка всей памяти калькулятора
procedure TfCalculator.CleanClick(Sender: TObject);
begin
  comma.Enabled := True;
  Output.Text := '0';
  x := 0;
  y := 0;
  res := 0;
end;
// Обработчик нажатия на кнопки цифр и запятую
procedure TfCalculator.ClickButton(Sender: TObject);
begin
  if Output.Text <> 'ошибка' then
  begin
  if (Sender as TButton).Caption = ',' then
  (Sender as TButton).Enabled := False;
  if (Output.Text = '0') then
  Output.Text := (Sender as TButton).Caption else
  Output.Text := Output.Text + (Sender as TButton).Caption;
  end;
end;
// Обработчик деления единицы на число
procedure TfCalculator.divisionOf1Click(Sender: TObject);
begin
  if Output.Text <> 'ошибка' then
  begin
  x := StrToFloat(Output.Text);
  if x <> 0 then
  begin
     res:= 1/x;
     Output.Text := FloatToStr(res);
  end  else
  Output.Text := 'ошибка';
  x := 0;
  end;
end;
// Обработчик удаления элемента из поля ввода
procedure TfCalculator.removeElementClick(Sender: TObject);
var
    str : String;
begin
  comma.Enabled := True;
  str := Output.Text;
  if (str <> '')and (str<>'ошибка')then
  begin
  if str[Length(str)] = ',' then
     comma.Enabled := True;
   Delete(str, Length(str), 1);
   end;
   if str = '' then
   str := '0';
  Output.Text := str;
end;
// Обработчик нажатия на кнопку действия
procedure TfCalculator.ClickAct(Sender: TObject);
begin
  if Output.Text <> 'ошибка' then
  begin
    comma.Enabled := True;
    x := StrToFloat(Output.Text);
    Output.Text := '0';
    act := (Sender as TButton).Caption;
  end;
end;
// Обработчик нажатия на "равно"
procedure TfCalculator.ClickEqual(Sender: TObject);
begin
   comma.Enabled := True;
   if Output.Text <> 'ошибка' then
   begin
   y := StrToFloat(Output.Text);
   case act of
   '+' : res:= x + y;
   '-' : res := x - y;
   '*' : res := x * y;
   '/' : if y <> 0 then
         res := x / y;
   end;
   if (y = 0) and (act = '/') then
         Output.Text := 'ошибка' else
         Output.Text := FloatToStr(res);
   end;
end;
//Обработчик вычисления корня
procedure TfCalculator.ClickSqrt(Sender: TObject);
begin
if Output.Text <> 'ошибка' then
begin
  x := StrToFloat(Output.Text);
  if (x >= 0) then
  begin
  res:= power(x, 1/2);
  Output.Text := FloatToStr(res);
  x := 0;
  end
  else
       Output.Text := 'ошибка'
end;
end;

// Обработчик вычисления квадрата
procedure TfCalculator.sqrClick(Sender: TObject);
begin
  if Output.Text <> 'ошибка' then
  begin
  x := StrToFloat(Output.Text);
  res:= power(x, 2);
  Output.Text := FloatToStr(res);
  x := 0;
  end;
end;

end.


unit unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  a,b,h,y : Double;

implementation

{$R *.lfm}

{ TForm1 }



procedure TForm1.Button1Click(Sender: TObject);
begin
     Close;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
Memo1.Lines.Clear;
if (Edit1.Text = '') or (Edit2.Text = '') or (Edit3.Text = '') then
    Exit;
a := StrToFloat(Edit1.Text);
b := StrToFloat(Edit2.Text);
h := StrToFloat(Edit3.Text);

while a < b do
begin
y := Power(a, 2);
Memo1.Lines.Add('y= ' + FloatToStr(y));
a := a + h
end;
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
Memo1.Lines.Clear;
if (Edit1.Text = '') or (Edit2.Text = '') or (Edit3.Text = '') then
    Exit;
a := StrToFloat(Edit1.Text);
b := StrToFloat(Edit2.Text);
h := StrToFloat(Edit3.Text);

while a < b do
begin
y := Power(a, 2);
Memo1.Lines.Add('y= ' + FloatToStr(y));
a := a + h
end;
end;

procedure TForm1.Edit3Change(Sender: TObject);
begin
Memo1.Lines.Clear;
if (Edit1.Text = '') or (Edit2.Text = '') or (Edit3.Text = '') then
    Exit;
a := StrToFloat(Edit1.Text);
b := StrToFloat(Edit2.Text);
h := StrToFloat(Edit3.Text);

while a < b do
begin
y := Power(a, 2);
Memo1.Lines.Add('y= ' + FloatToStr(y));
a := a + h
end;
end;



end.


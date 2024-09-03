unit unit2;

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
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  polC,a,rad, S : Float;
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
  if (Edit1.Text = '') or (Edit2.Text = '') then
  Exit;
  polC := StrToFloat(Edit1.Text) / 2;
  rad := (StrToFloat(Edit2.Text) * (pi/180));
  a := polC/cos(rad);
  S := 1/2 * a * StrToFloat(Edit1.Text) * sin(rad);
  Memo1.Lines.Add('Площадь треугольника = ' + FloatToStr(S));
  Memo1.Lines.Add('длина a = ' + FloatToStr(a));
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
   Memo1.Lines.Clear;
  if (Edit1.Text = '') or (Edit2.Text = '') then
  Exit;
  polC := StrToFloat(Edit1.Text) / 2;
  rad := (StrToFloat(Edit2.Text) * (pi/180));
  a := polC/cos(rad);
  S := 1/2 * a * StrToFloat(Edit1.Text) * sin(rad);
  Memo1.Lines.Add('Площадь треугольника = ' + FloatToStr(S));
  Memo1.Lines.Add('длина a = ' + FloatToStr(a));
end;

end.


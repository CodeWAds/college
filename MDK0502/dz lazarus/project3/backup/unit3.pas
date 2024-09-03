unit unit3;

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
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  k1, k2, t: Double;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  if (Edit1.Text = '') or (Edit2.Text = '') then
    Exit;

  k1 := StrToFloat(Edit1.Text);
  k2 := StrToFloat(Edit2.Text);
  t := Power(k1, k2);
  Memo1.Lines.Add('число ' + Edit1.Text + ' в степени ' + Edit2.Text + ' равно: ' + FloatToStr(t));
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
  if (Edit1.Text = '') or (Edit2.Text = '') then
    Exit;

  k1 := StrToFloat(Edit1.Text);
  k2 := StrToFloat(Edit2.Text);
  t := Power(k1, k2);
  Memo1.Lines.Add('число ' + Edit1.Text + ' в степени ' + Edit2.Text + ' равно: ' + FloatToStr(t));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.Label2Click(Sender: TObject);
begin

end;

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

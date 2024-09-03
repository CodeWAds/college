unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls, Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    ButtonClose: TButton;
    EditA: TEdit;
    EditB: TEdit;
    EditT: TEdit;
    Image1: TImage;
    LabelT: TLabel;
    LabelB: TLabel;
    LabelA: TLabel;
    LabelFun: TLabel;
    resMemo: TMemo;
    procedure ButtonCloseClick(Sender: TObject);
    procedure EditAChange(Sender: TObject);
    procedure EditBChange(Sender: TObject);
    procedure EditTChange(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  a,b,t,f : Double;

implementation

{$R *.lfm}

{ TForm1 }

function fun(a,b,t: float): float;
begin
  f := exp(-b*t)*Sin(a*t+b)-sqrt(Abs(b*t+a));
  fun := f;
end;

procedure readNum(Edit1,Edit2,Edit3: TEdit);
begin
  a := StrToFloat(Edit1.Text);
  b := StrToFloat(Edit2.Text);
  t := StrToFloat(Edit3.Text);
  f := fun(a,b,t);
end;

procedure TForm1.ButtonCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.EditAChange(Sender: TObject);
begin
  resMemo.Lines.Clear;
  if (EditA.Text = '') or (EditB.Text = '') or (EditT.Text = '') then
    Exit;
  readNum(EditA,EditB,EditT);
  resMemo.Lines.Add('f = ' + FloatToStr(f));
end;

procedure TForm1.EditBChange(Sender: TObject);
begin
  resMemo.Lines.Clear;
  if (EditA.Text = '') or (EditB.Text = '') or (EditT.Text = '') then
    Exit;
  readNum(EditA,EditB,EditT);
  resMemo.Lines.Add('f = ' + FloatToStr(f));
end;

procedure TForm1.EditTChange(Sender: TObject);
begin
  resMemo.Lines.Clear;
  if (EditA.Text = '') or (EditB.Text = '') or (EditT.Text = '') then
    Exit;
  readNum(EditA,EditB,EditT);
  resMemo.Lines.Add('f = ' + FloatToStr(f));
end;

end.


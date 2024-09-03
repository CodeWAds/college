program program2;

uses graphabc;

begin
  setpenwidth(2);
  setpencolor(clblack);
  SetWindowSize(800, 400);
  Line(300, 300, 600, 300);
  Line(600,300,700, 100);
  Line(700,100,500, 200);
  Line(550, 300, 450, 100);
  Line(350,300,450, 100);
  Line(300, 300, 200, 100);
  Line(200, 100,400, 200);
  
  FloodFill(350, 180, clBlue);
  FloodFill(450, 180, clRed);
  FloodFill(550, 180, clLime);

  SetBrushColor(clBlue);
  Circle(200, 100, 20);
  
  SetBrushColor(clRed);
  Circle(450, 100, 20);
  
  SetBrushColor(clLime);
  Circle(700, 100, 20);
end.

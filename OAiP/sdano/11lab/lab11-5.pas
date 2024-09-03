program zadacha5;

uses graphABC;

var i,x,y,r:integer;

begin
  SetWindowSize(800, 678);
  x:= 30;
  y:= 30;
  r:= 10;
  for i:=1 to 8 do
  begin
    Circle(x,y,r); 
    FloodFill(x+5,y+5,rgb(random(256), random(256), random(256)));
    x:= x + 70;
    y:= y + 70;
    r:= r + 15;
    end;
end.
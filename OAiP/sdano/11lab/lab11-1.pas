program program1;

uses GraphABC;

begin
  setpenwidth(2);
  setpencolor(clblack);
  Circle(150,150,50);
  FloodFill(150,150,clred);
  moveTo(200,150);
  lineTo(300,100);
  lineto(400,150);
  lineto(200,150);
  floodfill(300,125,clblue);
  lineTo(300,200);
  lineto(400,150);
  floodfill(300,175,clLime);
  Circle(450,150,50);
  floodfill(450,150,clyellow);
end.
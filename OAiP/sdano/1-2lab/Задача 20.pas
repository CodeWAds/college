program zadacha20;

var x1,y1,x2,y2,pl1,pl2 : integer;

begin
  writeln('Введите x1: ');
  readln(x1);
  writeln('Введите y1: ');
  readln(y1);
  writeln('Введите x2: ');
  readln(x2);
  writeln('Введите y2: ');
  readln(y2);
  if (x1 > 0) and (y1 > 0) then
    pl1 := 1;
  if (x1 < 0) and (y1 > 0) then
    pl1 := 2;
  if (x1 < 0) and (y1 < 0) then
    pl1 := 3;
  if (x1 > 0) and (y1 < 0) then
    pl1 := 4;
  if (x2 > 0) and (y2 > 0) then
    pl2 := 1;
  if (x2 < 0) and (y2 > 0) then
    pl2 := 2;
  if (x2 < 0) and (y2 < 0) then
    pl2 := 3;
  if (x2 > 0) and (y2 < 0) then
    pl2 := 4;
  if (pl1 = pl2) then
    writeln('Да')
  else
    writeln('Нет')
 end.
  
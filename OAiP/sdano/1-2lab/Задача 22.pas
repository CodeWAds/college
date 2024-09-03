program zadacha22;

var x1,y1,x2,y2 : integer;

begin
  writeln('Введите x1: ');
  readln(x1);
  writeln('Введите y1: ');
  readln(y1);
  writeln('Введите x2: ');
  readln(x2);
  writeln('Введите y2: ');
  readln(y2);
  if (x1 = x2) or (y1 = y2) then
    writeln('Да')
  else
    writeln('Нет')
end.
program zadacha23;

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
  if abs(x2-x1) = abs (y2-y1) then 
      writeln ('Да')
  else 
    writeln ('Нет');
end.
program zadacha19;

var a : integer;
var b, c, d, e: real;

begin
  writeln('Введите число: ');
  readln(a);
  b := a mod 10;
  c := a mod 100 div 10;
  d := a mod 1000 div 100;
  e := a mod 10000 div 1000;
  if (b = e) and (c = d) then
    writeln('Да')
  else
    writeln('Нет')
 end.
  
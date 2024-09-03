program zadacha10;

var a, b, c, d:integer;

begin
  writeln('Введите число ');
  readln(a);
  b := a mod 10;
  c := a div 10;
  d := c*100 + b;
  writeln(d)
end.
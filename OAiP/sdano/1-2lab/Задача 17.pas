program zadacha17;

var a, b, c, d, x1, x2: real;

begin
  writeln('Введите коэффициент a: ');
  readln(a);
  writeln('Введите коэффициент b: ');
  readln(b);
  writeln('Введите коэффициент c: ');
  readln(c);
  d := b * b - 4*a*c;
  if d < 0 then
    writeln('Корней нет');
  if d = 0 then begin
    x1 := (-b)/(2*a);
    writeln('x = ', x1);
    end;
  if d > 0 then begin
    x1 := (-b + sqrt(d))/(2*a);
    x2 := (-b - sqrt(d))/(2*a);
    writeln('x1 =',x1);
    writeln('x2 = ', x2);
    end;
end.
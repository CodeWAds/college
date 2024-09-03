program zadacha13;

var a, b, c, d: real;

begin
  writeln('Введите первое число: ');
  readln(a);
  writeln('Введите второе число: ');
  readln(b);
  writeln('Введите третье число: ');
  readln(c);
  if (a < b) and (a < c) then
    d := a;
  if (b < a) and (b < c) then
    d := b;
  if (c < a) and (c < b) then
    d := c;
  writeln('Наименьшее число: ', d)
end.
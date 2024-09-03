program zadacha15;

var a, b, c, d: real;

begin
  writeln('Введите первое число: ');
  readln(a);
  writeln('Введите второе число: ');
  readln(b);
  writeln('Введите третье число: ');
  readln(c);
  d := 0;
  if a > 0 then
    d := d + 1;
  if b > 0 then
    d := d + 1;
  if c > 0 then
    d := d + 1;
  writeln('Количество положительных чисел: ', d)
end.
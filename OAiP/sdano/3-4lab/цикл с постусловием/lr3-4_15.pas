program lr34number15;
var
  num, d, count, sum, p: Integer;

begin
  writeln('Введите число: ');
  readln(num);
  count := 0;
  sum := 0;
  p := 1;
  repeat
    d := num mod 10;
    count := count + 1;
    sum := sum + d;
    p := p * d;
    num := num div 10; 
  until num = 0;

  writeln('Количество цифр в числе: ', count);
  writeln('Сумма цифр числа: ', sum);
  writeln('Произведение цифр числа: ', p);
end.
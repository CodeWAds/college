program lr34number12;
var
  n1, n2, num, sum, p: Integer;

begin
  writeln('Введите начальное число: ');
  readln(n1);
  writeln('Введите конечное число: ');
  readln(n2);
  sum := 0;
  p := 1;
  num := n1;
  repeat
    if num mod 2 = 0 then
      p := p * num
    else
      sum := sum + num;

    num := num + 1;
  until num > n2;

  writeln('Сумма всех нечетных чисел: ', sum);
  writeln('Произведение всех четных чисел: ', p);
end.
program function1;
var
  x, res: real;
begin
  x := -11;
  while x <= 6 do
  begin
    if x < -9 then
      res := cos(x) + ln(-x)
    else if (x >= -9) and (x < 0) then
      res := sin(x) - cos(x)
    else if (x >= 0) and (x < 4) then
      res := log10(x) / ln(x) - (power(x, 1/3) / 55)
    else
      res := ln(x);

    writeln('Для x = ', x, ' Результат: ', res);
    x := x + 0.3;
  end;
end.

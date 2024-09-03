program lr34number16;
var
  num, d: Integer;

begin
  writeln('Введите натуральное число: ');
  readln(num);

  writeln('Разложение числа ', num, ' на простые множители: ');

  d := 2;

  repeat
    if num mod d = 0 then
    begin
      write(d, ' ');
      while num mod d = 0 do
        num := num div d;
    end;
    d := d + 1;
  until num = 1;
end.
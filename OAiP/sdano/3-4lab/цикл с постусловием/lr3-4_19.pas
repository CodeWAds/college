program lr34number19;
var
  num, rev, r: Integer;

begin
  writeln('Введите число: ');
  readln(num);

  rev := 0;

  repeat
    r := num mod 10; 
    rev := rev * 10 + r;  
    num := num div 10;
  until num = 0;

  writeln('Перевернутое число: ', rev);
end.
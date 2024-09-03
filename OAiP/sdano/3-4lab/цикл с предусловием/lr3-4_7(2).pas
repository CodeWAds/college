program lr34number7_2;
var
  n, s, h: real;
  func : real;
begin
  writeln('Введите начало отрезка: ');
  readln(n);
  writeln('Введите конец отрезка: ');
  readln(s);
  writeln('Введите шаг отрезка: ');
  readln(h);
  while n <= s do
  begin
    n := n+h;  
    func := 3*n*n - power(2,n);
    writeln(func);
  end;
end.
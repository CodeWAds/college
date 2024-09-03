program lr34number13;
var
  f, com, num, sum, av, i: Integer;

begin
  f := 3; 
  com := 6;  
  num := 10; 

  sum := 0;
  i := 0;

  repeat
    i := i + 1;
    sum := sum + f;
    f := f + com;
  until i = num;

  av := sum div num;

  writeln('Сумма первых 10 чисел ряда: ', sum);
  writeln('Среднее арифметическое первых 10 чисел ряда: ', av);
end.

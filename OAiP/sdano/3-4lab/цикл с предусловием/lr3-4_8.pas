program lr34number8;
var
  n,s,sum: real;
  func : real;
begin
  writeln('Введите n: ');
  readln(n);
  s:= 1;
  sum := 0;
  while s <= n do
  begin
    sum := sum + 1/s;
    s := s+1;  
    
  end;
writeln(sum);
end.
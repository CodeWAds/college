program lr34number11;
var
  n,s,f: real;
begin
  writeln('Введите n: ');
  readln(n);
  f := 1;
  while n > 0 do
  begin
    f:= f * n;
    n := n - 1;
    
  end;
writeln(f);
end.
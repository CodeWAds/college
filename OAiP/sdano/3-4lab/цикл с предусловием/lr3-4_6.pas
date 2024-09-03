program lr34number6;
var
  n, s, m, count: Integer;

begin
  writeln('Введите число: ');
  readln(n);
  m := n;
  count := 0;

  while m > 0 do
  begin
    s := m;
    if n mod s = 0 then
      count := count + 1;

    m := m - 1; 
  end;

  writeln(count);
end.
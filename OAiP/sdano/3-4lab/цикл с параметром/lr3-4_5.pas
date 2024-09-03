program lr34number5;
var
  n, s, m: Integer;

begin
  writeln('Введите число: ');
  readln(n);
  for s := n downto 1 do
  begin
    if n mod s = 0 then
      writeln(s)
  end;
end.
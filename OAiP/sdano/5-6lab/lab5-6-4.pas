program zadacha4;

const Size = 30;

var 
  i, size_b: integer;
  a: array[1..Size] of integer;
  b: array[1..Size] of integer;
begin
  for i:= 1 to Size do
    a[i] := Random(-99, 67);
  size_b := 0;
  for i:= 1 to Size do
  begin
    if a[i] mod 2 = 0 then
    begin
      size_b := size_b + 1;
      b[size_b] := a[i];
    end;
  end;
  writeln('Массив А:');
    for i := 1 to Size do
      write(a[i], ' ');
  writeln;
  writeln('Массив B:');
    for i := 1 to size_b do
      write(b[i], ' ');
end.
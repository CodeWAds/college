program zadacha5;

const Size = 10;

var 
  i, sum_pola, sum_polb: integer;
  a: array[1..Size] of integer;
  b: array[1..Size] of integer;
begin
  sum_pola := 0;
  for i:= 1 to Size do
    begin
      a[i] := Random(100);
      sum_pola := sum_pola + a[i]
    end;
  sum_polb := 0;
  for i:= 1 to Size do
    begin
      b[i] := Random(100);
      sum_polb := sum_polb + b[i]
    end;
  if sum_pola > sum_polb then
  begin
    for i:= 1 to Size do
      a[i] := a[i] * 10;
      writeln('Итоговый массив:');
    for i := 1 to Size do
      write(b[i], ' ');
  end;
  if sum_pola < sum_polb then
  begin
    for i:= 1 to Size do
      b[i] := b[i] * 10;
    writeln('Итоговый массив:');
    for i := 1 to Size do
      write(b[i], ' ');
  end
  else
    writeln(0);
end.
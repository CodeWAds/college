program zadacha12;
const N = 20;
var
  arr: array[1..N] of Integer;
  i, j: Integer;
begin
  for i := 1 to N do
    arr[i] := random(-50,50);
  writeLn('Исходный массив:');
  for i := 1 to N do
    write(arr[i], ' ');
  writeln;
  for i := N downto 1 do
  begin
    if arr[i] > 0 then
    begin
      for j := N downto i + 1 do
        arr[j] := arr[j - 1];
      arr[i] := 0;
    end;
  end;
  
  WriteLn('Массив с 0 перед положительными элементами:');
  for i := 1 to N do
    Write(arr[i], ' ');
end.


program zadacha1;

const
  ARRAY_SIZE = 20;
var
  arr: array[1..ARRAY_SIZE] of integer;
  i: integer;

begin
  writeln('Введите 20 целых чисел:');
  for i := 1 to ARRAY_SIZE do
    readln(arr[i]);
  
  writeln('Исходный массив:');
  for i := 1 to ARRAY_SIZE do
    write(arr[i], ' ');

  writeln;
  writeln('Массив после замен:');

  for i := 1 to ARRAY_SIZE do
  begin
    if arr[i] > 0 then
      arr[i] := 0
    else
      arr[i] := arr[i] * arr[i];
    write(arr[i], ' ');
  end;

end.
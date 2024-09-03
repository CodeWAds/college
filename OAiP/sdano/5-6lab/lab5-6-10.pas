program zadacha10;

const N = 20;

var 
  i, j, num : integer; 
  arr : array[1..N] of integer;
begin
  num := N;
  for i := 1 to num do
    arr[i] := random(-50,50);
  
  writeln('Изначальный массив:');
  for i := 1 to num do
    write(arr[i], ' ');
   i := 1;
  while i <= num do
  begin
    if arr[i] < 0 then
    begin
      for j := i to num - 1 do
        arr[j] := arr[j + 1];
      num := num - 1;
    end
    else
      i := i + 1;
    end;
  writeln;
  writeln('Массив после удаления отрицательных элементов:');
  for i := 1 to num do
    write(arr[i], ' ');
      
end.
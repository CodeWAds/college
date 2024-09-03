program zadacha9;

const N = 20;
var
  i, firstPol, num, min, minIndex : integer;
  arr : array[1..N] of integer;
begin
  num:= N;
  for i:= 1 to num do
    arr[i] := random(-50,50);
  writeln('Изначальный массив: ');
  for i := 1 to num do
    write(arr[i], ' ');
  writeln;
  firstPol := 0;
  for i:= 1 to num do
  begin
    if arr[i] > 0 then
    begin
    firstPol := i;
    break;
    end;  
  end;
  
  if firstPol > 0 then
  begin
    for i := firstPol to num - 1 do
      arr[i] := arr[i + 1];
    num := num - 1;
  end;
  min := arr[1];
  minIndex := 1;
  for i := 2 to num do
  begin
    if arr[i] < min then
    begin
      min := arr[i];
      minIndex := i;
    end;
  end;

  for i := minIndex to num - 1 do
    arr[i] := arr[i + 1];
  num := num - 1;

  writeln('Массив после удаления первого положительного и наименьшего элемента:');
  for i := 1 to num do
    write(arr[i], ' ');
  
end.
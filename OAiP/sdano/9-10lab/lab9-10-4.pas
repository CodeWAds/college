program zadacha4;

const
  Size = 10;

type
  TIntegerArray = array[1..Size] of Integer;

function SumOfPositiveElements(var arr: TIntegerArray): Integer;
var
  i, sum: Integer;
begin
  sum := 0;
  for i := 1 to Size do
  begin
    if arr[i] > 0 then
      sum := sum + arr[i];
  end;
end;

procedure MultiplyArrayBy10(var arr: TIntegerArray);
var
  i: Integer;
begin
  for i := 1 to Size do
    arr[i] := arr[i] * 10;
end;

procedure PrintArray(var arr: TIntegerArray);
var
  i: Integer;
begin
  for i := 1 to Size do
    Write(arr[i]:5);
  Writeln;
end;

procedure FillArrayRandomly(var arr: TIntegerArray);
var
  i: Integer;
begin
  for i := 1 to Size do
    arr[i] := random(-100, 100);
end;

var
  numbers_1, numbers_2: TIntegerArray;
  sum_1, sum_2: Integer;

begin
  FillArrayRandomly(numbers_1);
  FillArrayRandomly(numbers_2);

  Writeln('Первый массив:');
  PrintArray(numbers_1);
  Writeln('Второй массив:');
  PrintArray(numbers_2);

  sum_1 := SumOfPositiveElements(numbers_1);
  sum_2 := SumOfPositiveElements(numbers_2);

  if sum_1 < sum_2 then
  begin
    MultiplyArrayBy10(numbers_1);
    Writeln('Умножаем первый массив на 10:');
    PrintArray(numbers_1);
  end
  else
  begin
    MultiplyArrayBy10(numbers_2);
    Writeln('Умножаем второй массив на 10:');
    PrintArray(numbers_2);
  end;
end.

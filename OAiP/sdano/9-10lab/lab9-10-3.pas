program zadacha3;

const
  Size = 10;

type
  TIntegerArray = array[1..Size] of Integer;

function FirstPositiveElementIndex(arr: TIntegerArray): Integer;
var
  i: Integer;
begin
  FirstPositiveElementIndex := 0;
  for i := 1 to Size do
    if arr[i] > 0 then
    begin
      FirstPositiveElementIndex := i;
      Break;
    end;
end;

function LastNegativeElementIndex(arr: TIntegerArray): Integer;
var
  i: Integer;
begin
  LastNegativeElementIndex := 0;
  for i := Size downto 1 do
    if arr[i] < 0 then
    begin
      LastNegativeElementIndex := i;
      Break;
    end;
end;

procedure PrintArray(arr: TIntegerArray);
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
    arr[i] := random(-100,100); 
end;

var
  numbers: TIntegerArray;
  index: Integer;

begin
  FillArrayRandomly(numbers);

  Writeln('Данный массив:');
  PrintArray(numbers);

  index := FirstPositiveElementIndex(numbers);
  if index > 0 then
    Writeln('Первый положительный элемент: ', index)
  else
    Writeln('Нет положительных элементов');

  index := LastNegativeElementIndex(numbers);
  if index > 0 then
    Writeln('последний отрицательный элемент: ', index)
  else
    Writeln('нет отрицательных элементов');
end.


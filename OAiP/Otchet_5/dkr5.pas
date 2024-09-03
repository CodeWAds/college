program choice_sort;

uses Crt;

const
  ARRAY_SIZE = 10;

type
  IntArray = array [1..ARRAY_SIZE] of Integer;

procedure ReadArrayFromFile(var arr: IntArray);
var
  inputFile: TextFile;
  i: Integer;
begin
  AssignFile(inputFile, 'E:/лабы/Основы алгоритмизации и программирования/input.txt');
  Reset(inputFile);

  for i := 1 to ARRAY_SIZE do
    Read(inputFile, arr[i]);

  CloseFile(inputFile);
end;

procedure WriteArrayToFile(const arr: IntArray);
var
  outputFile: TextFile;
  i: Integer;
begin
  AssignFile(outputFile, 'E:/лабы/Основы алгоритмизации и программирования/output.txt');
  Rewrite(outputFile);

  for i := 1 to ARRAY_SIZE do
    Write(outputFile, arr[i], ' ');

  CloseFile(outputFile);
end;

procedure SelectionSort(var arr: IntArray; ascending: Boolean);
var
  i, j, minIndex, maxIndex, temp: Integer;
begin
  for i := 1 to ARRAY_SIZE - 1 do
  begin
    minIndex := i;

    for j := i + 1 to ARRAY_SIZE do
    begin
      if (ascending and (arr[j] < arr[minIndex])) or
         (not ascending and (arr[j] > arr[minIndex])) then
        minIndex := j;
    end;

    if i <> minIndex then
    begin
      temp := arr[i];
      arr[i] := arr[minIndex];
      arr[minIndex] := temp;
    end;
  end;
end;

procedure QuickSort(var arr: IntArray; low, high: Integer; ascending: Boolean);
var
  i, j, pivot, temp: Integer;
begin
  if low < high then
  begin
    pivot := arr[(low + high) div 2];
    i := low;
    j := high;

    repeat
      while (ascending and (arr[i] < pivot)) or
            (not ascending and (arr[i] > pivot)) do
        Inc(i);

      while (ascending and (arr[j] > pivot)) or
            (not ascending and (arr[j] < pivot)) do
        Dec(j);

      if i <= j then
      begin
        temp := arr[i];
        arr[i] := arr[j];
        arr[j] := temp;
        Inc(i);
        Dec(j);
      end;
    until i > j;

    QuickSort(arr, low, j, ascending);
    QuickSort(arr, i, high, ascending);
  end;
end;

var
  data: IntArray;
  choice, order,ch: Char;
begin
  repeat
  ClrScr;
  WriteLn('Выберите алгоритм сортировки:');
  WriteLn('1. Сортировка выбором');
  WriteLn('2. Быстрая сортировка');
  ReadLn(choice);
  ClrScr;
  WriteLn('Выберите порядок сортировки:');
  WriteLn('A. По возрастанию');
  WriteLn('D. По убыванию');
  ReadLn(order);
  ClrScr;
  ReadArrayFromFile(data);

  case choice of
    '1': SelectionSort(data, order = 'A');
    '2': QuickSort(data, 1, ARRAY_SIZE, order = 'A');
  end;

  WriteArrayToFile(data);
  WriteLn('Результат успешно записан в файл output.txt.');
  WriteLn('Нажмите Enter, чтобы задать новые параметры');
  ch:= ReadKey;
  until ch = #27;
end.

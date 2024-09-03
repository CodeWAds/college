program zadacha1;

const
  Size = 10;

var
  arr: array[1..Size] of integer;
  n, i, j, count: integer;

begin
  writeln('Введите элементы массива: ');
  for i := 1 to Size do
    readln(arr[i]);

  count := 0;

  for i := 1 to Size do
  begin
    for j := 1 to i do
    begin
      if arr[i] = arr[j] then
        break; 
    end;

    if j = i then
      Inc(count);
  end;

  writeln('Количество различных элементов в массиве: ', count);
end.

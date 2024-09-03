program zadacha3;

const Size = 20;

var
  a: array[1..Size] of integer;
  i, maxEl, maxElIndex, minEl, minElIndex, kratn_5: integer;

begin

  for i := 1 to Size do
    a[i] := Random(-52, 65);

  maxEl := a[1];
  maxElIndex := 1;
  minEl := 65;
  minElIndex := -1;

  for i := 2 to Size do
  begin
    if a[i] > maxEl then
    begin
      maxEl := a[i];
      maxElIndex := i;
    end;
  end;

  for i := 1 to Size do
  begin
    if (a[i] > 0) and (a[i] < minEl) then
    begin
      minEl := a[i];
      minElIndex := i;
    end;
  end;
  kratn_5 := -1;
 for i := Size downto 1 do
  begin
    if a[i] mod 5 = 0 then
    begin
      kratn_5 := i;
      break;
    end;
  end;
  
  writeln('Массив:');
  for i := 1 to Size do
    write(a[i], ' ');

  writeln;
  writeln('Наибольший элемент: ', maxEl, ' индекс: ', maxElIndex);
  if minElIndex <> -1 then
    writeln('Наименьший положительный элемент: ', minEl, ' индекс: ', minElIndex)
  else
    writeln('В массиве нет положительных элементов.');
  writeln('Кратный 5 элемент: ', kratn_5);
end.
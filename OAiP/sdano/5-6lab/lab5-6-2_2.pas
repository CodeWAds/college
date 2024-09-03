program zadacha2_2;

const Size = 20;
var 
  a: array[1..Size] of integer;
  i: integer;
  sum_prin: integer;
begin 
  writeln('Введите 20 целых чисел:');
  for i := 1 to Size do
    readln(a[i]);
  sum_prin:= 0;
  for i:= 1 to Size do
  begin
    if (a[i] >= -22) and (a[i] <= 93) then
      sum_prin:= sum_prin + a[i];
  end;
  
  writeln('Количество чисел, кторые принадлежат промежутку: ',sum_prin);
end.
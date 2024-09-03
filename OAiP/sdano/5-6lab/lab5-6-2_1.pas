program zadacha2_1;

const Size = 20;
var 
  a: array[1..Size] of integer;
  i: integer;
  count_chet: integer;
  proizv_nechet: integer;
begin 
  for i := 1 to Size do
    a[i] := Random(-22, 93);
  count_chet := 0;
  proizv_nechet := 1;
  for i:= 1 to Size do
  begin
    if (a[i] div 2 = 0) and (i div 2 <> 0) then
      count_chet := count_chet + 1;
    if a[i] div 2 <> 0 then
      proizv_nechet := proizv_nechet * a[i];
  end;
  
  writeln('Количество четных чисел: ',count_chet);
  writeln('Произведение нечетных чисел: ', proizv_nechet);
end.
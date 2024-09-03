program zadacha7;

var 
  stroka : string;
  i,count, count_null : integer;
begin
  writeln('Введите строку: ');
  readln(stroka);
  count := 0;
  count_null := 0;
  for i:= 1 to length(stroka) do
     if (stroka[i] = '+') or (stroka[i] = '-') then 
       count := count + 1;
  for i:= 1 to length(stroka) do
     if ((stroka[i] = '+') and (stroka[i+1] = '0')) or ((stroka[i] = '-')and(stroka[i+1] = '0')) then 
       count_null := count_null + 1;
  writeln('Количество символов + и -: ', count);
  writeln('Количество символов + и - после которых идет 0: ',count_null);
end.
  
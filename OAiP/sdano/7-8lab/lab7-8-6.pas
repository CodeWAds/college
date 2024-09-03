program zadacha6;

var 
  stroka : string;
  i : integer;
 begin
   writeln('Введите строку: ');
   readln(stroka);
   
   for i:= 3 to length(stroka) step 3 do
     write(stroka[i]);
 end.
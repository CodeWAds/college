program zadacha8;

var 
  stroka : string;
  i, index_temp: integer;
  foundX, foundW : boolean;
begin
  writeln('Введите строку: ');
  readln(stroka);
  
  foundX := False;
  foundW := False;
  
  for i:= 1 to length(stroka) do
    begin  
      if stroka[i] = 'x' then
        begin
          foundX := True;
          writeln('Первый встретился x');
          index_temp := i;
          break;
        end;
      if stroka[i] = 'w' then
        begin
          foundW := True;
          writeln('Первый встретился w');
          index_temp := i;
          break;
        end;
    end;
    
  for i:= index_temp to length(stroka) do
    begin  
      if stroka[i] = 'x' then
        begin
          foundX := True;
        end;
      if stroka[i] = 'w' then
        begin
          foundW := True;
        end;
    end;
  
  if not foundX then
    writeln('Х отсутствует');
  if not foundW then
    writeln('W отсутствует');
   
end.
  
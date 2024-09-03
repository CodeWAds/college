program zadacha10;

var
  stroka: string;
begin
  writeln('Введите строку: ');
  readln(stroka);
  
  if (stroka[1] = 'a') and (stroka[2] = 'b') and (stroka[3] = 'c') then
  begin
    stroka[1] := 'w';
    stroka[2] := 'w';
    stroka[3] := 'w';
  end
  else
  begin
    stroka := stroka + 'zzz';
  end;
  
  writeln(stroka);
end.
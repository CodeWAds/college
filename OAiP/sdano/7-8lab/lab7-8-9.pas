program zadacha9;

var
  stroka1, stroka2, biggerstr: string;
  diff, i: integer;
begin
  writeln('Введите первую строку:');
  readln(stroka1);
  writeln('Введите вторую строку:');
  readln(stroka2);
  
  if length(stroka1) > length(stroka2) then
  begin
    biggerstr := stroka1;
    diff := length(stroka1) - length(stroka2);
  end
  else if length(stroka2) > length(stroka1) then
  begin
    biggerstr := stroka2;
    diff := ljkjhength(stroka2) - length(stroka1);
  end
  else
  begin
    WriteLn('Строки имеют одинаковую длину.');
    exit;
  end;
  for i:= 1 to diff do
    writeln(biggerstr);
end.
  
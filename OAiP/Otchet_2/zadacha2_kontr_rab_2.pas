program zadacha2;

var
  str: string;
  i, len: integer;
  isPal: boolean;

begin
  writeln('Введите строку: ');
  readln(str);

  str := LowerCase(str);

  len := Length(str);

  isPal := True;
  for i := 1 to len div 2 do
  begin
    if str[i] <> str[len - i + 1] then
    begin
      isPal := False;
      Break;
    end;
  end;

  if isPal then
    writeln('Строка - палиндром')
  else
    writeln('Строка - не палиндром');

end.

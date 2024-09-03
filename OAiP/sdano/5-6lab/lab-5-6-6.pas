program zadacha6;

const Size = 10;

var 
  i: integer;
  a: array[1..Size] of integer;
  ordered: boolean;
begin
  for i:= 1 to Size do
    readln(a[i]);
  ordered := true;
  for i := 2 to Size do
  begin
    if a[i] < a[i - 1] then
    begin
      ordered := false;
      break;
    end;
  end;

  if ordered then
    writeln('Элементы массива упорядочены по возрастанию.')
  else
    writeln('Элементы массива не упорядочены по возрастанию.');
end.
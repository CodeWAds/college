program zadacha21;

var a,b,c,ch,nch : integer;

begin
  writeln('Введите первое целое число: ');
  readln(a);
  writeln('Введите второе целое число: ');
  readln(b);
  writeln('Введите третье целое число: ');
  readln(c);
  ch := 0;
  nch := 0;
  if (a mod 2) = 0 then
    ch := ch + 1;
  if (b mod 2) = 0 then
    ch := ch + 1;
  if (c mod 2) = 0 then
    ch := ch + 1;
  if (a mod 2) = 1 then
    nch := ch + 1;
  if (b mod 2) = 1 then
    nch := ch + 1;
  if (c mod 2) = 1 then
    nch := nch + 1;
  if (nch > 0) and (ch > 0) then
    writeln('Да')
  else
    writeln('Нет')
end.
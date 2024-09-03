program zadacha24;

var a,b,c,x : real;

begin
  writeln('Введите a: ');
  readln(a);
  writeln('Введите b: ');
  readln(b);
  if (a=0) and (b<>0) then Writeln('NO') 
  else
  if (a=0) and (b=0) then Writeln('INF') 
  else
    Writeln('x=',-b/a);
 end.
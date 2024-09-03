program zadacha9;

var a,b,c,d,e:integer;

begin 
  writeln('Введите трехзначное число: ');
  readln(a);
  b := a div 100;
  c := a mod 10;
  d := a div 10 mod 10;
  e := c*100 + d*10 + b;
  writeln(e);
end.
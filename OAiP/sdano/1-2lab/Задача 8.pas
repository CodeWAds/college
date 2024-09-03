program zadacha8;

var 
    a, b, c, d: integer;
begin
    writeln('Введите трехзначное число: ');
    readln(a);
    c := a div 100;
    writeln('Первая цифра: ',c);
    writeln('Введите четырехзначное число: ');
    readln(b);
    d := b div 1000;
    writeln('Первая цифра: ',d);
end.
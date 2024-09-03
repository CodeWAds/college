program FindIntegral;

uses CRT;

const
  NORM = LightGray; 
  SEL = Green;
  K = 2;

var
  menu: array[1..K] of string;
  punkt: integer;
  ch: char;
  x_menu, y_menu: integer;

function Calculations(var x, h: real): real;
var
  value_f: real;
begin
  value_f := h * (2 * (x * x * x) + (-1) * x * x + (1) * x + (11));
  Calculations := value_f;
end;

function Calculations_NL(var x: real): real;
var
  value_f_NL: real;
begin
  value_f_NL := ((x * x * x * x) / 2) - ((x * x * x) / 3) + ((x * x) / 2) + (11 * x);
  Calculations_NL := value_f_NL;
end;

var
  x, h, a, b, sum_f, fun, integral, f_a, f_b, error: real;
  i, N, choice: integer;

procedure punkt1;
begin
  ClrScr;
  var i: integer;
  repeat
  begin
    writeln('Введите пределы интегрирования через пробел:');
    readln(a, b);
    CLRSCR;
    writeln('Введите количество разделений:');
    readln(N);
    CLRSCR;
    h := (b - a) / (N - 1);
    x := a;
    sum_f := 0;
    f_a := Calculations_NL(a);
    f_b := Calculations_NL(b);
    integral := f_b - f_a;
    for i := 0 to (N - 1) do
    begin
      fun := Calculations(x, h);
      sum_f := sum_f + fun;
      x := x + h;
    end;
    sum_f := abs(sum_f);
    error := sum_f - integral;
    writeln('Результат вычислений:', sum_f);
    writeln('Абсолютная погрешность: ', error);
    writeln('<<Нажмите Enter чтобы выйти в меню>>');
    ch := readkey;
    end;
  until ch = #13;
end;

procedure MenuToScr;
var
  i: integer;
begin
  ClrScr;
  for i := 1 to K do
  begin
    GoToXY(x_menu, y_menu + i - 1);
    write(menu[i]);
  end;
  TextColor(SEL);
  GoToXY(x_menu, y_menu + punkt - 1);
  write(menu[punkt]);
  TextColor(NORM);
end;

begin
  menu[1] := ' Найти интеграл '; 
  menu[2] := ' Выход ';
  punkt := 1; 
  x_menu := 2; 
  y_menu := 2; 
  TextColor(NORM);
  MenuToScr;
  repeat
    ch := ReadKey;
    if ch = #0 then
    begin
      ch := ReadKey;
      case ch of
        #40: {Вниз}
          if punkt < K then
          begin
            GoToXY(x_menu, y_menu + punkt - 1);
            write(menu[punkt]);
            punkt := punkt + 1;
            TextColor(SEl);
            GoToXY(x_menu, y_menu + punkt - 1);
            write(menu[punkt]);
            TextColor(NORM);
          end;
        #38: {Вверх}
          if punkt > 1 then
          begin
            GoToXY(x_menu, y_menu + punkt - 1);
            write(menu[punkt]);
            punkt := punkt - 1;
            TextColor(SEl);
            GoToXY(x_menu, y_menu + punkt - 1);
            write(menu[punkt]);
            TextColor(NORM);
          end;
      end;
    end
    else
    if ch = #13 then
    begin
      case punkt of
        1: punkt1;
        2: ch := #27;
      end;
      MenuToScr;
    end;
  until ch = #27;
end.

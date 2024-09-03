program lr34number2;

var
  n: Integer;
  square: Integer;
begin
  for n := 10 to 100 do
  begin
    square := n * n;
    write(square:6, ' ');

    if n mod 10 = 9 then
      writeln();
    if square = 9801 then 
      break
    end;
end.
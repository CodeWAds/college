program lr34number4;
var
  n, s: Integer;

begin
  s := 0;
  for n := 4 to 37 do
  begin
    s := s + n * n;
  end;
  writeln(s);
end.
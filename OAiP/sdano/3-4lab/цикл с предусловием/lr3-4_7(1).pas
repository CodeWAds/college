program lr34number7_1;
var
  n, s, h: real;
  func : real;
begin
  n := -5;
  s := 5;
  h := 0.5;
  while n <= s do
  begin
    n := n+h;  
    func := 3*n*n - power(2,n);
    writeln(func);
  end;
end.
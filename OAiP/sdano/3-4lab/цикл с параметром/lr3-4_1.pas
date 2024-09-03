program lr34number1;

var  
  a, b, i: integer;
  d, e: real;

begin
  d := 2.54;
  a := 1;
  b := 20;
  
  for i:=a to b do
  begin
    e := d * i;
    writeln(e,'см');
  end;
end.
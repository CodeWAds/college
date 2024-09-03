unit Painter;
uses GraphABC;
procedure paint(x1, y1, x2, y2, k: integer);
var
  xn, yn: integer;
begin
  if k > 0 then
  begin
    xn := (x1 + x2) div 2 + (y2 - y1) div 2;
    yn := (y1 + y2) div 2 - (x2 - x1) div 2;
    paint(x1, y1, xn, yn, k - 1);
    paint(x2, y2, xn, yn, k - 1);
  end
  else
  begin
    Line(x1, y1, x2, y2);
  end;
end;
end.
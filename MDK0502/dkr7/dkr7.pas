program Dragon;
uses Painter;
uses GraphABC;

var
  k, x0, y0, x01, y01: integer;
  s: integer;

procedure KeyDown(Key: integer);
begin
  case Key of
    VK_Q: begin
      k := k - 1;
    end;
    VK_E:begin
      k := k +1;
    end;
    VK_Left:begin 
      x0 := x0 - 100;
      x01:= x01 - 100;
      end;
    VK_Right: 
      begin 
      x0 := x0 + 100;
      x01:= x01 + 100;
      end;
    VK_Up: 
     begin 
      y0 := y0 - 100;
      y01:= y01 -100;
      end;
    VK_Down: 
      begin 
      y0 := y0 + 100;
      y01:= y01 + 100;
      end;
    VK_W:begin
      if s > 0 then s:= s-25;
    end;
    VK_S:begin
      if s < 1000 then s:= s+25;
    end;
    
  end;

  ClearWindow;
  paint(x0-s, y0, x01+s, y01, k);
  redraw;
end;

begin
  k := 10;
  x0 := 200;
  y0 := 300;
  x01 := 500;
  y01 := 300;
  LockDrawing;
  OnKeyDown := KeyDown;

  paint(x0, y0, x01, y01, k);
  redraw;
end.

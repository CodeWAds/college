program zadanie_1;

var i: integer;
  i_ptr: ^integer;
begin
  new(i_ptr);
  i_ptr^ := 4;
  writeln('Адрес  ='  , i_ptr); 
  writeln('Значение = ', i_ptr^); 
end.
program List10;

type
  NodePtr = ^Node;
  Node = record
    Data: Integer;
    Next: NodePtr;
  end;

var
  Head, Current: NodePtr;
  i: Integer;

procedure AddNode(var Head: NodePtr; Data: Integer);
var
  NewNode: NodePtr;
begin
  New(NewNode);
  NewNode^.Data := Data;
  NewNode^.Next := Head;
  Head := NewNode;
end;

begin
  Head := nil;

  for i := 1 to 10 do
    AddNode(Head, Random(20));

  writeln('Список из 10 элементов:');
  Current := Head;
  while Current <> nil do
  begin
    write(Current^.Data, ' ');
    Current := Current^.Next;
  end;

  writeln;

  writeln('Четные элементы списка:');
  Current := Head;
  while Current <> nil do
  begin
    if Current^.Data mod 2 = 0 then
      write(Current^.Data, ' ');
    Current := Current^.Next;
  end;

  Current := Head;
end.

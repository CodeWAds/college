program FindMinMax;

type
  NodePtr = ^Node;
  Node = record
    Data: Integer;
    Next: NodePtr;
  end;

var
  Head, Current: NodePtr;

procedure AddNode(var Head: NodePtr; Data: Integer);
var
  NewNode: NodePtr;
begin
  New(NewNode);
  NewNode^.Data := Data;
  NewNode^.Next := Head;
  Head := NewNode;
end;

procedure FindMinMaxInList(Head: NodePtr; var Min, Max: Integer);
var
  Current: NodePtr;
begin
  
  if Head = nil then
  begin
    writeln('Список пуст.');
    Exit;
  end;

  Current := Head;
  Min := Current^.Data;
  Max := Current^.Data;
  

  while Current <> nil do
  begin
    if Current^.Data < Min then
      Min := Current^.Data;

    if Current^.Data > Max then
      Max := Current^.Data;

    Current := Current^.Next;
  end;
  
end;

begin
  Head := nil;

  AddNode(Head, 5);
  AddNode(Head, 7);
  AddNode(Head, 8);
  AddNode(Head, 6);
  AddNode(Head, 10);

  var Min, Max: Integer;
  FindMinMaxInList(Head, Min, Max);
  
  writeln('Минимальный элемент в списке: ', Min);
  writeln('Максимальный элемент в списке: ', Max);

  Current := Head;
  while Current <> nil do
  begin
    Head := Current^.Next;
    Dispose(Current);
    Current := Head;
  end;

end.

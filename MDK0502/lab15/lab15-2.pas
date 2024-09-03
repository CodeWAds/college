program WordCount;

type
  NodePtr = ^Node;
  Node = record
    Word: string;
    Count: Integer;
    Next: NodePtr;
  end;

var
  F: Text;
  Head, Current, Previous: NodePtr;
  WordFound: Boolean;
  CurrentWord: string;
  count : integer;

procedure CreateNode(var NewNode: NodePtr; Word: string);
begin
  New(NewNode);
  NewNode^.Word := Word;
  NewNode^.Count := 1;
  NewNode^.Next := nil;
end;

function MakePlace(Word: string): NodePtr;
var
  CurrentNode, PreviousNode: NodePtr;
begin
  CurrentNode := Head;
  PreviousNode := nil;

  while (CurrentNode <> nil) and (CurrentNode^.Word < Word) do
  begin
    PreviousNode := CurrentNode;
    CurrentNode := CurrentNode^.Next;
  end;

  Result := PreviousNode;
end;

procedure AddBefore(Place: NodePtr; NewNode: NodePtr);
begin
  if Place = nil then
  begin
    NewNode^.Next := Head;
    Head := NewNode;
  end
  else
  begin
    NewNode^.Next := Place^.Next;
    Place^.Next := NewNode;
  end;
end;

procedure PrintList;
var
  CurrentNode: NodePtr;
begin
  writeln('Список слов:');

  CurrentNode := Head;
  while CurrentNode <> nil do
  begin
    writeln(CurrentNode^.Word, ': ', CurrentNode^.Count);
    CurrentNode := CurrentNode^.Next;
  end;
end;

begin
  Assign(F, 'lab-15-2.txt');
  Reset(F);

  Head := nil;

  while not Eof(F) do
  begin
    Readln(F, CurrentWord);

    WordFound := False;
    Current := Head;
    while (Current <> nil) and (not WordFound) do
    begin
      if Current^.Word = CurrentWord then
      begin
        Inc(Current^.Count);
        WordFound := True;
      end;
      Previous := Current;
      Current := Current^.Next;
    end;

    if not WordFound then
    begin
      count += 1;
      CreateNode(Current, CurrentWord);
      AddBefore(Previous, Current);
    end;
  end;

  Close(F);

  PrintList;
  writeln(count);
end.

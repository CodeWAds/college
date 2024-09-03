program CircularDoublyLinkedList;

uses Crt, GraphABC;

const
  MaxNodes = 10;

type
  Node = record
    Data: Integer;
    Prev, Next: ^Node;
  end;

var
  Nodes: array[1..MaxNodes] of Node;
  Head: ^Node;
  i: Integer;

procedure DisplayList(Head: ^Node);
var
  Current: ^Node;
  x, y: Integer;
  firstX, firstY: Integer;
begin
  if Head <> nil then
  begin
    Current := Head;
    repeat
      x := Current^.Data * 100;
      y := 100;

      Rectangle(x - 20, y - 20, x + 50, y + 50);

      if Current^.Next <> Head then
      begin
        Line(x + 50, y, x + 100, y);
      end;

      TextOut(x - 15, y - 15, IntToStr(Current^.Prev^.Data));
      TextOut(x + 5, y + 5, IntToStr(Current^.Data));
      TextOut(x + 25, y + 25, IntToStr(Current^.Next^.Data));
      
      if (Current^.Next = Head) or (Current = Head) then
      begin
        Line(x + 15, y+ 50,x+15, y + 200);
        firstX := Head^.Data * 100;
        firstY := 100;
        Line(x + 15, firstY + 200, firstX + 15, firstY + 200);
      end;

      Current := Current^.Next;
    until Current = Head;
  end
  else
    Writeln('Список пуст.');
end;

function CreateNode(Data: Integer): ^Node;
var
  NewNode: ^Node;
begin
  NewNode := @Nodes[Data];
  NewNode^.Data := Data;
  NewNode^.Prev := nil;
  NewNode^.Next := nil;
  CreateNode := NewNode;
end;
procedure UpdateListVisual(Head: ^Node);
begin
  ClearWindow;
  DisplayList(Head);
end;
procedure AddToTail(var Head: ^Node; Data: Integer);
var
  NewNode, Temp: ^Node;
begin
  NewNode := CreateNode(Data);
  if Head = nil then
  begin
    Head := NewNode;
    Head^.Prev := Head;
    Head^.Next := Head;
  end
  else
  begin
    Temp := Head^.Prev;
    Temp^.Next := NewNode;
    NewNode^.Prev := Temp;
    NewNode^.Next := Head;
    Head^.Prev := NewNode;
  end;
  UpdateListVisual(Head);
end;

procedure RemoveFromTail(var Head: ^Node);
var
  Temp, LastNode: ^Node;
begin
  if Head <> nil then
  begin
    LastNode := Head^.Prev;
    Temp := LastNode^.Prev;
    Temp^.Next := Head;
    Head^.Prev := Temp;
    Dispose(LastNode);
  end;
  UpdateListVisual(Head);
end;

procedure AddToTailWithoutArray(var Head: ^Node; Data: Integer);
var
  NewNode, Temp: ^Node;
begin
  New(NewNode);
  NewNode^.Data := Data;
  if Head = nil then
  begin
    Head := NewNode;
    Head^.Prev := Head;
    Head^.Next := Head;
  end
  else
  begin
    Temp := Head^.Prev;
    Temp^.Next := NewNode;
    NewNode^.Prev := Temp;
    NewNode^.Next := Head;
    Head^.Prev := NewNode;
  end;
  UpdateListVisual(Head);
end;

procedure FreeList(var Head: ^Node);
var
  Current, Temp: ^Node;
begin
  if Head <> nil then
  begin
    Current := Head;
    repeat
      Temp := Current;
      Current := Current^.Next;
      Dispose(Temp);
    until Current = Head;
    Head := nil;
  end;
end;

procedure CreateListWithArray;
var i:integer;
begin
  Head := nil;
  for i := 1 to MaxNodes do
    AddToTail(Head, i);
end;

procedure CreateListWithoutArray;
var
  NumElements, Element,i: Integer;
begin
  Head := nil;
  Write('Введите количество элементов в списке: ');
  Readln(NumElements);
  for i := 1 to NumElements do
  begin
    Write('Введите элемент ', i, ': ');
    Readln(Element);
    AddToTailWithoutArray(Head, Element);
  end;
end;

procedure MainMenu;
var
  Choice: Integer;
begin
  SetConsoleIO;
  repeat
    Writeln('1. Создать список через массив');
    Writeln('2. Создать список без массива');
    Writeln('3. Добавить элемент в конец списка');
    Writeln('4. Удалить элемент из конца списка');
    Writeln('5. Показать список');
    Writeln('6. Очистить список');
    Write('Выберите действие: ');
    Readln(Choice);
    ClrScr;
    case Choice of
      1: CreateListWithArray;
      2: CreateListWithoutArray;
      3: begin
           Write('Введите значение для нового элемента: ');
           Readln(i);
           AddToTailWithoutArray(Head, i);
         end;
      4: RemoveFromTail(Head);
      5:begin
        ClearWindow; 
      DisplayList(Head);
      end;
      6: FreeList(Head);
        end;
   until Choice = 6;
end;

begin
  SetWindowSize(1000, 600);
  MainMenu;
end.

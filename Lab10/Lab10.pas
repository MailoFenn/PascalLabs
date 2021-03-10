program elem_queue;
type tip=real;
     Queue=^s;
     s=record
        Data: tip;
        Next: Queue;
    end;
var o1, head1: Queue;
    numer:tip;
    b: boolean;
procedure IncludeInQueue (var FirstElem, LastElem: Queue; NewElem: tip);
var  ServiceVar: Queue;
begin
     new(ServiceVar);
     ServiceVar^.Data := NewElem;
     ServiceVar^.Next := nil;
     if (FirstElem = nil) and (LastElem = nil) then
     begin
          FirstElem := ServiceVar;
          LastElem := ServiceVar;
     end
     else
     begin
          LastElem^.Next := ServiceVar;
          LastElem := ServiceVar;
     end;
end;
procedure Main (FirstElem: Queue; var flag: boolean);
var  last: tip;
     o: Queue;
begin
  o:=FirstElem;
  flag:=false;
  while o^.next <> nil do
     begin
        if last <> o^.data then
          begin
               last:=o^.data;
               o:=o^.next;
          end
          else
          begin
             flag := true;
             break;
          end;
     end;
end;
BEGIN
 numer:=1;
 while numer <> 0 do
     begin
        readln (numer);
        IncludeInQueue (head1, o1, numer)
     end;
 main (head1, b);
 writeln (b);
 while o1 <> nil do
     begin
        o1:=head1;
        head1 := o1^.next;
        Dispose(o1);
     end;
readln;
end.
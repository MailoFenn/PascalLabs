type   
  tList = ^pList;
  pList = record
    n : Integer;
    x : tList;
  end;
    
var
  List, Cur, Dub : tList;
  n : Integer;
begin
  Cur := nil;
  repeat
    Read(n);
    if n <> 0 then
      if Cur = nil then
        begin New(Cur); Cur^.n := n; List := Cur; end
      else
        begin New(Cur^.x); Cur := Cur^.x; Cur^.n := n; end;
  until n = 0;
  if Cur <> nil then Cur^.x := nil;
  
  Write('Список:'); Cur := List; while Cur <> nil do begin Write(#32,Cur^.n); Cur := Cur^.x; end; WriteLn;
  
  Write('Число: '); Read(n);
  Cur := List; while Cur <> nil do if Cur^.n = n then begin New(Dub); Dub^.n := n; Dub^.x := Cur^.x; Cur^.x := Dub; Cur := Dub^.x; end else Cur := Cur^.x;
 
  Write('Список:'); Cur := List; while Cur <> nil do begin Write(#32,Cur^.n); Cur := Cur^.x; end; WriteLn;
end.
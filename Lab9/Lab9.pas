uses Lib;
 
var
   i,j,sum:integer;
   a: arr;
 
begin
   for i:= 1 to 10 do
      for j := 1 to 10 do
      a[i][j] := i + j;
   write(func(a));
end.
Unit Lib;
Interface
  type arr = array[1..10, 1..10] of integer;
  function func(var a: arr): integer;
Implementation
  function func(var a: arr): integer;
  var i,j,count: integer;
  begin
    for i:= 1 to 10 do
      for j := 1 to 10 do
        if i = j then
          count += a[i][j];
    Result := count;
  end;
 end.
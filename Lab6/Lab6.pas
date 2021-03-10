const
  fileName = 'work.txt';
  TempFileName = 'temp.txt';
var f1, FileTemp : Text;
    s1 : string;
    i, a: integer;
    
procedure writeF(s2 : string);
begin
  Assign(f1, fileName);
  {Если  файл существует на диске,
   то инициирует запись в ранее существовавший 
   текстовый файл для его расширения}
  if FileExists(fileName) then begin
    Append(f1);
  end
  else begin
  {Если файл не существует, то создаем файл}
    Rewrite(f1);
  end;
  writeln(f1, s2); //Записываем строку
  Close(f1); //Закрываем файл
end;
 
begin
  write('Введите строку для записи в файл: ');
  readln(s1);
  for i:=length(s1) downto 1 do
   if s1[i] in ['0'..'9'] then
    inc(s1[i]);
  writeF(s1);{Вызываем процедуру для записи в файл строки}
  
  {Создаем временный файл и записыываем в него строку TurboPascal}
  Assign(FileTemp, TempFileName);
  Rewrite(FileTemp);
  
  {Открываем для чтения рабочий файл,
   считывем из него строки
   и записываем эти строки во временный файл}
  Assign(f1, fileName);
  Reset(f1);
  while not Eof(f1) do begin
    readln(f1, s1);
    writeln(FileTemp, s1);
  end;
  Close(f1);
  Close(FileTemp);
  
  {Стираем с диска рабочий файл}
  Erase(f1);
  {Переименовываем временный файл}
  Rename(FileTemp, fileName);
  
  writeln('Вывод результатов в файл '+fileName+' закончен');
end.
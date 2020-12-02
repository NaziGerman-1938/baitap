uses crt;
var i,x:word;

begin
clrscr;
for i:=0 to 10 do begin
       gotoxy(25+i*2,1);
       write('* ');
       gotoxy(25+i*2,22);
       write('* ');
       delay(250); {ve chieu ngang}
       end;
for i:=1 to 22 do begin
    gotoxy(25,i);
    write('*');
    gotoxy(45,i);
    write('*');
    delay(250);
    end;
for i:=26 to 44 do begin
gotoxy(i,19);
write('-');
delay(250);
end;
readln;
end.
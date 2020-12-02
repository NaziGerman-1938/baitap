uses crt;
var i,x:word;

begin
clrscr;
for i:=0 to 10 do begin
       gotoxy(25+i*2,1);
       write('* ');
       gotoxy(25+i*2,11);
       write('* ');
       delay(250); {ve chieu ngang}
       gotoxy(25,i+1);
       write('*');
       gotoxy(45,i+1);
       write('*');
       delay(250); {ve chieu dung}
       {Ve khung}
end;
for i:=26 to 44 do begin
gotoxy(i,11-3);
write('-');
delay(250);
end;
readln;
end.
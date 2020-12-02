uses crt;
var i,x:word;
    rd,a:string;
begin
clrscr;
randomize;
for i:=0 to 10 do begin
       gotoxy(25+i*2,1);
       write('* ');
       gotoxy(25+i*2,22);
       write('* ');
       delay(250); {ve chieu ngang}
       end;
{ve chieu doc}
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

{base}
while true do begin
rd:=Chr(random(25)+97); {random chu cai de nhap}
x:=random(18)+26;       {random truc hoanh`}
i:=2;
while i<=19 do begin
gotoxy(x,i);
write(rd);
if keypressed then begin
a:=readkey;
if a = rd then begin
gotoxy(x,i);
write(' ');
break;
end;
end;
delay(500);
gotoxy(x,i);
write(' ');
i:=i+1;
end;
if i = 20 then break;
end;
end.
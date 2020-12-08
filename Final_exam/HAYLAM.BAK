uses crt;
var i,x,c,d,s,hs,w,v,t,k,z,f:word;
    rd,a:string;
    b:char;
    fo: text;

begin
assign(fo,'hscore.txt'); rewrite(fo);
clrscr;
writeln('Chon do kho cho game: ');
writeln('1: De (1s),(x1 Point), (5 Points/level');
writeln('2: Trung Binh (0.5s), (x2 Point), (4 Points/level)');
writeln('3: Kho (0.3s), (x4 Point), (3 Points/level)');
writeln('4: Tu chon(ts), (cap so tang diem Point tu chon), (So point/level)');
while not ((b='1') or (b='2') or (b='3') or (b='4')) do begin
b:=readkey;
case b of
'1': begin t:=1000; k:=1; z:=5; end;
'2': begin t:=500; k:=2;  z:=4; end;
'3': begin t:=300; k:=4;  z:=3; end;
'4': begin write('Nhap t: '); readln(t); write('Nhap cap so tang diem: '); readln(k);
     write('Nhap So point/level: '); readln(z); end;
else writeln('Khong xac dinh duoc su lua chon, vui long chon lai');
end;
end;
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
{ve vach dinh muc}
for i:=26 to 44 do begin
gotoxy(i,19);
write('-');
delay(250);
end;
f:=0;
d:=0;
{base} {setup}
while true do begin
rd:=Chr(random(25)+97); {random chu cai de nhap}
x:=random(18)+26;       {random truc hoanh`}
i:=2;{y}
c:=f div z; {level}
gotoxy(50,10);
write('Level: ',c); {Viet detail level}
gotoxy(50,11);
write('Point: ',d); {Viet detail diem}
s:=c * 25; {Toc do thay doi}
v:=t-s;  {Toc do}
{Main}
while i<=19 do begin
w:=0;
if a=rd then begin
gotoxy(x,i);
write(' ');
d:=d+k;
f:=f+1;
break;
end;
gotoxy(x,i);
write(rd);
while (a<>rd) and  (w<=v) do begin
if keypressed then begin
a:=readkey;
continue;
end;
delay(1);
w:=w+1;
end;
gotoxy(x,i);
write(' ');
i:=i+1;
end;
if i = 20 then break;
end;
if d>hs then write(fo,d);
close(fo);
end.
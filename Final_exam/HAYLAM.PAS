uses crt;
var i,x,c,s,w,f,l,dem,g,z,dem1:word;
    t,k,v,d,hs:real;
    rd,a,b:string;
    fo: text;

begin
clrscr;
writeln('Chon do kho cho game: ');
writeln('1: De (1s),(x1 Point), (5 Points/level), (5 mau)');
writeln('2: Trung Binh (0.5s), (x2 Point), (4 Points/level), (3 mau)');
writeln('3: Kho (0.3s), (x4 Point), (3 Points/level)), (1 mau )');
writeln('4: Tu chon(ts), (cap so tang diem Point tu chon), (So point/level),(So mau tu chon)');
while not ((b='1') or (b='2') or (b='3') or (b='4')) do begin
b:=readkey;
case b of
'1': begin t:=1000; k:=1; z:=5; l:=5; end;
'2': begin t:=500; k:=2;  z:=4; l:=3; end;
'3': begin t:=300; k:=4;  z:=3; l:=1; end;
'4': begin write('Nhap t: '); readln(t); t:=t*1000; write('Nhap cap so tang diem: '); readln(k);
     write('Nhap So point/level: '); readln(z);
     write('Nhap so mau ban muon: '); readln(l); end;
else writeln('Khong xac dinh duoc su lua chon, vui long chon lai');
end;
end;
randomize;
b:='r';
while b='r' do begin
clrscr;
assign(fo,'data.txt');
reset(fo);
read(fo,hs);
rewrite(fo);
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
g:=0;
{base} {setup}
while true do begin
rd:=Chr(random(25)+97); {random chu cai de nhap}
x:=random(18)+26;       {random truc hoanh`}
i:=2;{y}
c:=f div z; {level}
gotoxy(50,9);
write('Mau: ');
for dem:=1 to l-g do begin
gotoxy(55+dem,9);
write('+');
gotoxy(56+l-g,9);
write(' ');
end;
gotoxy(50,10);
write('Level: ',c); {Viet detail level}
gotoxy(50,11);
write('Point: ',d:0:2); {Viet detail diem}
if d>hs then begin
hs:=d;
gotoxy(50,12);
write('Highscore: ',hs:0:2); {Viet detail highscore}
end else begin
gotoxy(50,12);
write('Highscore: ',hs:0:2);
end;
s:=c * 25; {Toc do thay doi}
v:=t-s;  {Toc do}
for dem:=26 to 44 do begin
gotoxy(dem,19);
write('-');
end;
{Main}
while i<=19 do begin
w:=1; {Bat dau tu giay 0,01}
if a=rd then begin
gotoxy(x,i);
write(' '); {Toi toa do co chu roi xoa chu}
d:=d+k; {diem +}
f:=f+1; {Cot moc de tang level}
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
if i = 20 then g:=g+1;
if l = g then break;
end;
rewrite(fo);
write(fo,hs:0:2);
close(fo);
clrscr;
writeln('Ban muon the nao: ');
writeln('1: Choi lai (phim r)');
writeln('2: thoat game (phim e)');
b:=readkey;
while (b<>'r') and (b<>'e') do begin
writeln('Su lua chon khong duoc xac dinh, vui long chon lai!');
b:=readkey;
end;
end;
end.

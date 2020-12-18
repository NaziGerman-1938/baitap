uses crt;
var c,s,w,f,l,dem,g,z,dem1,dem2,dem3,luu,sochi,soluong,dc,cc,y,soluong1,dem4:word;
    t,k,v,d,hs1,hs2,hs3,hs4:real;
    c1,b,a:char;
    norscore,rankscore: text;
    chedo,mucdo,name,password:string;
    dname,dpass: array[1..100] of string;
    ds1,ds2,ds3,ds4: array[1..100] of real;
    x,i:array[1..100] of word;
    rd:array[1..100] of char;
    tontai,nhap:boolean;

begin
clrscr;
gotoxy(32,10);
writeln('Nhan phim bat ky de tiep tuc...');
readkey;
clrscr;
randomize;
b:='m';
while (b='r') or (b='m') do begin
while b='m' do begin
c1:='b';
while (c1='n') or (c1='r') or (c1='b') do begin
while (c1='n') or (c1='b') do begin
while (c1='b') or (c1='n') do begin
c1:='#'; b:='#';
clrscr;
gotoxy(1,1);
writeln('Chon che do choi: ');
writeln('1. Choi thuong');
writeln('2. Xep hang');
writeln('3. Thoat game');
while not ((b='1') or (b='2') or (b='3'))do begin
b:=readkey;
case b of
'1': chedo:='normal';
'2': chedo:='rank';
'3': exit;
else writeln('Khong the xac dinh su lua chon nay, vui long chon lai');
end;
end;
if (chedo='rank') and ((name='')and (password=''))then begin
clrscr;
write('Hay nhap ten: '); readln(name);
write('Hay nhap mat khau: '); readln(password);
end;
if chedo='normal' then begin
assign(norscore,'data.txt');
reset(norscore);
readln(norscore,hs1);
readln(norscore,hs2);
readln(norscore,hs3);
readln(norscore,hs4);
close(norscore);
end;
if chedo='rank' then begin
assign(rankscore,'account.txt'); reset(rankscore);
dem2:=1;
tontai:=FALSE;
while not Eof(rankscore) do begin
readln(rankscore,dname[dem2]);
readln(rankscore,dpass[dem2]);
if (dname[dem2]=name) and (dpass[dem2]=password) then begin tontai:=TRUE; luu:=dem2; end;
readln(rankscore,ds1[dem2]);
readln(rankscore,ds2[dem2]);
readln(rankscore,ds3[dem2]);
readln(rankscore,ds4[dem2]);
dem2:=dem2+1;
end;
close(rankscore);
if tontai=TRUE then begin sochi:=dem2-1; end else begin
sochi:=dem2;
luu:=sochi;
append(rankscore);
dname[luu]:=name;
dpass[luu]:=password;
ds1[luu]:=0;
ds2[luu]:=0;
ds3[luu]:=0;
ds4[luu]:=0;
writeln(rankscore,dname[luu]);
writeln(rankscore,dpass[luu]);
writeln(rankscore,ds1[luu]:0:2);
writeln(rankscore,ds2[luu]:0:2);
writeln(rankscore,ds3[luu]:0:2);
writeln(rankscore,ds4[luu]:0:2);
close(rankscore);
end;
end;
b:='#';
if chedo='rank' then begin
clrscr;
writeln('1: Choi');
writeln('2: Xem rank');
writeln('3: Quay lai');
while (b<>'1') and (b<>'2') and (b<>'3') do begin
b:=readkey;
case b of
'3': c1:='b';
else writeln('Khong xac dinh duoc su lua chon nay, vui long chon lai');
end;
end;
end;
end;
clrscr;
b:='#';
writeln('Chon do kho cho game: ');
writeln('1: De (1s),(x1 Point), (5 Points/level), (5 mau), (1 chu)');
writeln('2: Trung Binh (0.5s), (x2 Point), (4 Points/level), (3 mau), (4 level/chu)');
writeln('3: Kho (0.3s), (x4 Point), (3 Points/level)), (1 mau ), (3 level/chu)');
writeln('4: Tu chon(ts), (cap so tang diem Point tu chon), (So point/level),(So mau tu chon), (So level/chu)');
writeln('5: Quay lai');
while not ((b='1') or (b='2') or (b='3') or (b='4') or (b='5')) do begin
b:=readkey;
case b of
'1': begin t:=1000; k:=1; z:=5; l:=5; mucdo := 'easy'; c1:='#'; end;
'2': begin t:=500; k:=2;  z:=4; l:=3; mucdo := 'normal'; cc:=4; c1:='#'; end;
'3': begin t:=300; k:=4;  z:=3; l:=1; mucdo := 'hard'; cc:=3; c1:='#'; end;
'4': begin write('Nhap t: '); readln(t); t:=t*1000; write('Nhap cap so tang diem: '); readln(k);
     write('Nhap So point/level: '); readln(z);
     write('Nhap so mau ban muon: '); readln(l); mucdo := 'option';
     write('Nhap so level/chu: '); readln(cc);
     c1:='#'; end;
'5': begin if chedo='normal' then c1:='n';
           if chedo='rank' then c1:='r'; end;
else writeln('Khong xac dinh duoc su lua chon, vui long chon lai');
end;
end;
end;
while c1='r' do begin
chedo:='rank';
b:='#';
c1:='#';
clrscr;
writeln('1: Choi');
writeln('2: Xem rank');
writeln('3: Quay lai');
while (b<>'1') and (b<>'2') and (b<>'3') do begin
b:=readkey;
case b of
'3': begin c1:='b'; end;
else writeln('Khong xac dinh duoc su lua chon nay, vui long chon lai');
end;
end;
if b='3' then break;
clrscr;
b:='#';
writeln('Chon do kho cho game: ');
writeln('1: De (1s),(x1 Point), (5 Points/level), (5 mau), (1 chu)');
writeln('2: Trung Binh (0.5s), (x2 Point), (4 Points/level), (3 mau), (4 level/chu)');
writeln('3: Kho (0.3s), (x4 Point), (3 Points/level), (1 mau), (3 level/chu)');
writeln('4: Tu chon(ts), (cap so tang diem Point tu chon), (So point/level),(So mau tu chon), (So level/chu)');
writeln('5: Quay lai');
while not ((b='1') or (b='2') or (b='3') or (b='4') or (b='5')) do begin
b:=readkey;
case b of
'1': begin t:=1000; k:=1; z:=5; l:=5; mucdo := 'easy'; c1:='#'; end;
'2': begin t:=500; k:=2;  z:=4; l:=3; mucdo := 'normal'; cc:=4; c1:='#'; end;
'3': begin t:=300; k:=4;  z:=3; l:=1; mucdo := 'hard'; cc:=3; c1:='#'; end;
'4': begin write('Nhap t: '); readln(t); t:=t*1000; write('Nhap cap so tang diem: '); readln(k);
     write('Nhap So point/level: '); readln(z);
     write('Nhap so mau ban muon: '); readln(l); mucdo := 'option';
     write('Nhap so level/chu: '); readln(cc);
     c1:='#'; end;
'5': begin if chedo='normal' then c1:='n';
           if chedo='rank' then c1:='r'; end;
else writeln('Khong xac dinh duoc su lua chon, vui long chon lai');
end;
end;
end;
end;
end;
clrscr;
for dem3:=0 to 10 do begin
       gotoxy(25+dem3*2,1);
       write('* ');
       gotoxy(25+dem3*2,22);
       write('* ');
       delay(250); {ve chieu ngang}
       end;
{ve chieu doc}
for dem3:=1 to 22 do begin
    gotoxy(25,dem3);
    write('*');
    gotoxy(45,dem3);
    write('*');
    delay(250);
    end;
{ve vach dinh muc}
for dem3:=26 to 44 do begin
gotoxy(dem3,19);
write('-');
delay(250);
end;
f:=0;
d:=0;
g:=0;
if chedo='rank' then begin
gotoxy(50,7);
write('Ten: ',dname[luu]);
end;
gotoxy(50,8);
write('Muc do: ',mucdo);
{base} {setup}
while true do begin {1}
if mucdo='easy' then soluong:=1 else soluong:=(c div cc) + 1;
for dem3:=1 to soluong do begin
rd[dem3]:=Chr(random(25)+97); {random chu cai de nhap}
x[dem3]:=random(18)+26;  {random truc hoanh`}
for dem4:=1 to dem3-1 do begin
while rd[dem4]=rd[dem3] do rd[dem4]:=Chr(random(25)+97);
while x[dem4]=x[dem3] do x[dem4]:=random(18)+26;
end;
end;
y:=2;{y}
c:=f div z; {level}
gotoxy(50,9);
write('Mau: ');
for dem:=1 to l-g do begin {2}
gotoxy(55+dem,9);
write('+');
gotoxy(56+l-g,9);
write(' ');
end;
gotoxy(50,10);
write('Level: ',c); {Viet detail level}
gotoxy(50,11);
write('Point: ',d:0:2); {Viet detail diem}
if mucdo='easy' then begin {3}
if chedo='normal' then
if d>hs1 then begin{4}
hs1:=d;
gotoxy(50,12);
write('Highscore: ',hs1:0:2); {Viet detail highscore}
end else begin {5}
gotoxy(50,12);
write('Highscore: ',hs1:0:2);
end;
if chedo='rank' then
if d>ds1[luu] then begin {6}
ds1[luu]:=d;
gotoxy(50,12);
write('Highscore: ',ds1[luu]:0:2); {Viet detail highscore}
end else begin {7}
gotoxy(50,12);
write('Highscore: ',ds1[luu]:0:2);
end;
end;
if mucdo='normal' then begin {8}
if chedo='normal' then
if d>hs2 then begin {9}
hs2:=d;
gotoxy(50,12);
write('Highscore: ',hs2:0:2); {Viet detail highscore}
end else begin {10}
gotoxy(50,12);
write('Highscore: ',hs2:0:2);
end;
if chedo='rank' then
if d>ds2[luu] then begin {11}
ds2[luu]:=d;
gotoxy(50,12);
write('Highscore: ',ds2[luu]:0:2); {Viet detail highscore}
end else begin {12}
gotoxy(50,12);
write('Highscore: ',ds2[luu]:0:2);
end;
end;
if mucdo='hard'then begin {13}
if chedo='normal' then
if d>hs3 then begin {14}
hs3:=d;
gotoxy(50,12);
write('Highscore: ',hs3:0:2); {Viet detail highscore}
end else begin {15}
gotoxy(50,12);
write('Highscore: ',hs3:0:2);
end;
if chedo='rank' then
if d>ds3[luu] then begin {16}
ds3[luu]:=d;
gotoxy(50,12);
write('Highscore: ',ds3[luu]:0:2); {Viet detail highscore}
end else begin {17}
gotoxy(50,12);
write('Highscore: ',ds3[luu]:0:2);
end;
end;
if chedo='option'then begin {18}
if chedo='normal' then
if d>hs4 then begin {19}
hs4:=d;
gotoxy(50,12);
write('Highscore: ',hs4:0:2); {Viet detail highscore}
end else begin {20}
gotoxy(50,12);
write('Highscore: ',hs4:0:2);
end;
if chedo='rank' then
if d>ds4[luu] then begin {21}
ds4[luu]:=d;
gotoxy(50,12);
write('Highscore: ',ds4[luu]:0:2); {Viet detail highscore}
end else begin {22}
gotoxy(50,12);
write('Highscore: ',ds4[luu]:0:2);
end;
end;
s:=c * 25; {Toc do thay doi}
v:=t-s;  {Toc do}
soluong1:=soluong;
nhap:=false;
a:='#';
for dem:=26 to 44 do begin {23}
gotoxy(dem,19);
write('-');
end;
{Main}
while (y<=19) do begin {24}
for dem3:=1 to soluong do i[dem3]:=y;
w:=1; {Bat dau tu giay 0,01}
if nhap=true then begin
gotoxy(x[dc],i[dc]);
write(' '); {Toi toa do co chu roi xoa chu}
d:=d+k; {diem +}
f:=f+1; {Cot moc de tang level}
if soluong1-1=0 then break else if soluong1-1>0 then soluong1:=soluong1-1;
end;
for dem3:=1 to soluong do begin
gotoxy(x[dem3],i[dem3]);
write(rd[dem3]);
end;
nhap:=false;
while (w<=v) do begin
for dem3:=1 to soluong do if (a=rd[dem3]) and (a<>' ')then begin nhap:=true; dc:=dem3; rd[dem3]:=' '; end;
if nhap=true then break;
if keypressed then begin
a:=readkey;
continue;
end;
delay(1);
w:=w+1;
end;
for dem3:=1 to soluong do begin
gotoxy(x[dem3],i[dem3]);
write(' ');
end;
y:=y+1;
{}end;
if y = 20 then g:=g+1;
if l = g then break;
end;
if chedo='normal' then begin
rewrite(norscore);
writeln(norscore,hs1:0:2);
writeln(norscore,hs2:0:2);
writeln(norscore,hs3:0:2);
writeln(norscore,hs4:0:2);
close(norscore);
end;
if chedo='rank' then begin
rewrite(rankscore);
for dem3:=1 to sochi do begin
writeln(rankscore,dname[dem3]);
writeln(rankscore,dpass[dem3]);
writeln(rankscore,ds1[dem3]:0:2);
writeln(rankscore,ds2[dem3]:0:2);
writeln(rankscore,ds3[dem3]:0:2);
writeln(rankscore,ds4[dem3]:0:2);
end;
close(rankscore);
end;
clrscr;
writeln('Ban muon the nao: ');
writeln('1: Choi lai (phim r)');
writeln('2: thoat game (phim e)');
writeln('3: ve man hinh chinh (phim m)');
b:=readkey;
while (b<>'r') and (b<>'e')  and (b<>'m') do begin
writeln('Su lua chon khong duoc xac dinh, vui long chon lai!');
b:=readkey;
end;
end;
end.
uses crt;
var N,i: word;
    r : boolean;

begin
clrscr;
write('Nhap N: '); readln(N);
r := true;
for i:=2 to N-1 do
if N mod i = 0 then begin
r:=false;
break;
end;
if r=true then write(N,' la so nguyen to') else write(N,' khong phai la so nguyen to');
readln;
end.
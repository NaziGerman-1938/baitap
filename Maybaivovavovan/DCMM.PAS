uses crt;
var a:char;
    s1,s2: byte;

begin
clrscr;
writeln('Hay suy nghi so yeu thich cua ban (0-100)');
delay(3000);
s1:=0; s2:=100;
while s1<>s2 do  begin
clrscr;
writeln('So cua ban co > ',(s1+s2) div 2);
a:=readkey;
if ((a='y') or (a='Y')) then  s1:=((s1+s2) div 2) + 1 else s2:=((s1+s2) div 2);
end;
clrscr;
writeln('So ban suy nghi la ',s1);
readln;
end.
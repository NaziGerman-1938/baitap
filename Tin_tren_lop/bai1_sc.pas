uses crt;
var N,i: word;
    r : boolean;

begin
write('Hay nhap N: '); readln(N);
r := true;
for i:=2 to N-1 do
if N mod 2 = 0 then begin
r:=false;
break;
end;
end.
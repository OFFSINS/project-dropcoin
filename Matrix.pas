Var s,s1:string; k,ks,p,l,n,i:integer;
begin
writeln('¬ведите слова:');readln(s);
write('k = '); readln(k);
s:=s+', ';
ks:=0;
p:=pos(', ',s);
while p>0 do
begin
s1:=copy(s,1,p-1);
l:=length(s1);
if l=k then
begin
n:=0;
for i:=1 to l do if s1[i]='ы' then n:=n+1;
if n>1 then begin writeln(s1); ks:=ks+1; end;
end;
delete(s,1,l+2);
p:=pos(', ',s);
end;
writeln('ks = ',ks);
end.
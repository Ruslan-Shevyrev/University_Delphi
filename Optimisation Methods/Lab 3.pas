program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils, math;
var a,b,c,d,e, f :real;
begin
a:=0;
b:=1;
e:=0.00001;
c:=power(a,4)+exp(-a);
while (a<=b) do
begin
a:=a+e;
d:=power(a,4)+exp(-a);
//writeln(d:5:3);
if c<d then
 f:=c else
 begin
 f:=d;
 c:=d;
 end;
end;
writeln(f:5:3);
readln;
end.
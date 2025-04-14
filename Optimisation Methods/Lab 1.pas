program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils, math;
var a,b,c,x1,x2, y1, y2, y3, y4 :real;
begin
a:=-2;
b:=2;
x1:=sqrt(3/3);
x2:=-sqrt(3/3);
if ((x1>-2) and (x1<2)) then
y1:=power(x1,3)-3*x1+1;
if ((x2>-2)and(x2<2)) then
y2:=power(x2,3)-3*x2+1;
y3:=power(-2,3)-3*(-2)+1;
y4:=power(2,3)-3*2+1;
if y1 > y2 then
if ((y2 > y3) or (y2 > y4)) then
if y3 > y4 then
 writeln (-2, '   tochka minimuma')
 else
 writeln (2, '  tochka minimuma')
 else
 if y2=y3 then
 writeln (x2:2:0, ' ',-2 , ' tochki minimuma' )
 else
 if y2=y4 then
 writeln (x2:2:0, ' ', 2 , ' tochki minimuma' )
 else writeln (x2:2:0, ' tochka minimuma')
 else
if ((y1 > y3) or (y1 > y4)) then
if y3 > y4 then
 writeln (-2, '   tochka minimuma')
 else
 writeln (2, '  tochka minimuma')
 else
 if y1=y3 then
 writeln (x1:2:0,' ', -2 , ' tochki minimuma' )
 else
 if y1=y4 then
 writeln (x1:2:0, ' ', 2 , ' tochki minimuma' )
 else writeln (x1:2:0 , ' tochka minimuma');

readln;

end.
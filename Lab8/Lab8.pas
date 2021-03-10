uses graphABC;
function F(x:real):real;
begin
F:=(x-1)*exp(-x);
end;
var xn,xk,x,y,mx,dx,t:real;
    x0,y0,a,my,i,px,py:integer;
    s:string;
begin
x0:=windowwidth div 2;
y0:=windowheight div 2;
xn:=-2*pi;xk:=2*pi;
mx:=y0 div 10;
my:=y0 div 10;
setpencolor(clBlack);
line(0,y0,windowwidth,y0);
line(x0,0,X0,windowheight );
line(x0-3,y0+my,x0+3,y0+my);
textout(x0-15,y0+my,'-1');
line(x0-3,y0-my,x0+3,y0-my);
textout(x0-15,y0-my,'1');
for i:=1 to round(4*pi)+2 do
  begin
    line(x0+round(i*mx),y0-3,x0+round(i*mx),Y0+3);
    line(x0-round(i*mx),y0-3,x0-round(i*mx),Y0+3);
    str(i,s);
    textout(x0+round(i*mx)-15,y0+10,s);
    textout(x0-round(i*mx),y0+10,'-'+s);
  end;

textout(x0+5,y0+10,'0');

textout(windowwidth-10,y0-10,'X');
textout(x0-10,10, 'Y');


textout(130,30,'График функции x=sqr(t)/(1+sqr(t)), y:=(t*t*t)/(1+sqr(t)), -10 <= t <= 10');

a:=y0-50;
t:=-10;
setpencolor(clRed);
  
while t<=10 do
 begin
  x:=(sqr(t)/(1+sqr(t)))*25;
  y:=((t*t*t)/(1+sqr(t)))*25;
  if t=0 then moveto(x0+round(x),y0-round(y))
  else lineto(x0+round(x),y0-round(y));
  t:=t+0.1;
 end;
end.
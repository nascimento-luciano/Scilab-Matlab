clc
clear
close
function s=sgn(v)
N=length(v);
for i=1:N
if v(i)==0
s(i)=0;
else
s(i)=abs(v(i))/v(i);
end
end
endfunction
function ydot=f(t,y)
x=y(1,:);
v=y(2,:);
ydot(1,:)=v;
ydot(2,:)=-(3.8724846^2)*2*%pi*x-0.2096573*9.81*[sgn(v)]';
endfunction
y0=[5;0];
t0=[0;0];
t=[0:0.01:4*%pi];
y=ode(y0,t0,t,f);
ydot=f(t,y);
a=ydot(2,:);
v=y(2,:);
x=y(1,:);
subplot(3,1,1)
plot(t,x)
subplot(3,1,2)
plot(t,v)
subplot(3,1,3)
plot(t,a)

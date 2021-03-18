clc
clear
close
deff('y2dot=f(ydot,y)','y2dot=-4*y-0.8*ydot');
y(1)=5e-3;
ydot(1)=0;
y2dot(1)=f(ydot(1),y(1));
dt=.05;
t=0:dt:10;
for i=2:length(t)
ydot(i)=ydot(i-1)+dt*y2dot(i-1);
y(i)=y(i-1)+dt*ydot(i-1);
y2dot(i)=f(ydot(i),y(i));
end
Y=[y ydot y2dot]; // [azul,verde,vermelho]
X=[t' t' t'];
plot(X,Y)

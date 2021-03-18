clc
clear
close
// dy/dt=y^2-y sin(t)-cos(t), y(0)=0
function ydot=f(t,y)
ydot=y^2-y*sin(t)-cos(t);
endfunction
y0=0; // valor inicial de y no tempo inicial
t0=0; // tempo inicial
t=0:0.1:%pi; //escla de tempo
y=ode(y0,t0,t,f);
plot(t,y)

clc
clear
close
t=[0:0.1:2*%pi]';
z=(sin(t).*exp(t))*cos(t');
plot3d(t,t,z)

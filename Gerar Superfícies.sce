clc
clear
close
x=-2:.1:2;
y=x;
deff('[z]=f(x,y)',['z= cos(x).*y']);
z=eval3d(f,x,y);
plot3d(x,y,z);

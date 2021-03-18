clc
clear
close
x=-2:.2:2;
y=-2:.2:2;
fx=-cos(x.^2)'*(y.^(2/3)); // matriz com as coordenadas x
fy=(sin(x).^2)'*y; // matriz com as coordenadas y
champ(x,y,fx,fy)

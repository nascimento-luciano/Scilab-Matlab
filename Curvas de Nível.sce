clc
clear
close
nz=10; // número de níveis
a=eye(5,10)+rand(5,10)+ones(5,10);// matriz para a plotagem
z= min(a) + (1:nz)*(max(a)-min(a))/(nz+1); //valor numérico de cada nível
x=size(a);
contour2d(1:x(1),1:x(2),a,nz);

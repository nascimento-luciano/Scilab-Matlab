clc
clear
close
N=100;
P=[];
I=[];
for i=1:N
if modulo(i,2)==0
P=[P i];
end
if modulo(i,2)==1
I=[I i];
end
end
disp(P)
disp(I)

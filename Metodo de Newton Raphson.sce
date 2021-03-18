// Metodo de Newton Raphson
deff("y=f(x)","y=x.^3-9*x+3"); // funcao original
deff("y=phi(x)","y=(2*x.^3-3)/(3*x.^2 -9)"); // esquema de Newton
iter=0;
x0=0.5;
x1=phi(x0);
while abs(x1-x0)>%eps,
 x0=x1;
 x1=phi(x0);
 iter=iter+1;
end;
disp(iter, x1)
// segundo metodo derivada aproximada
deff("y=phin(x)","y=x-f(x)/derivative(f,x)");
iter2=0;
z0=0.5;
z1=phin(z0);
while abs(z1-z0)>%eps,
z0=z1;
z1=phin(z0);
iter2=iter2+1;
end;
disp(iter2,z1)

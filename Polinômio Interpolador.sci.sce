function y=interpoly(tab);
// calcula o polinomio interpolador pelo metodo de lagrange;
getf("lagrangep.sci");
[l,n]=size(tab);
x=tab(1,:);
for i=1:n, L(i)=lagrangep(x,i); end;
p=0;
for i=1:n, p=p + tab(2,i)*L(i); end;
y=p;
endfunction


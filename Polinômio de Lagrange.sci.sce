function y=lagrangep(x,i),
// funcao para calcular o polinomio de lagrange 

if i>size(x) then error(" i incompativel com dimensao da tabela"); end;
[l,n]=size(x);

for k=1:i-1, r(k)=x(k); end;
for k=i:n-1, r(k)=x(k+1); end;
P=1;
for k=1:(n-1), P=P*(x(i)-r(k)); end;
if P==0 then error("tabela tem elementos iguais"); end;
y=poly(r, "x", "root")/P;
endfunction

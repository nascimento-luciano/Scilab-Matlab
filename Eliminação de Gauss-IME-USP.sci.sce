function Y=gauss_elim(A,n),
// executa o n esimo passo do metodo de eliminacao de Gauss
[l,c]=size(A);
if n>=min(l,c) then error("Nao da pra fazer com esse n"); end;
if A(n,n)==0 then error("fazer o Pivotamento primeiro"); end;
for k=n+1:l ,  
A(k,n)=A(k,n)/A(n,n);
A(k,n+1:c)=A(k,n+1:c)-A(k,n)*A(n,n+1:c);
end;
Y=A;
endfunction;

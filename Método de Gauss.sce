function x = Eg(Ab)
    // Método de Eliminação de Gauss
    // nl é o n° de linhas e nc nº de colunas da matriz Ab
    Ab = [1 2 3 4; 3 4 5 6; 7 4 3 6; 3 2 1 4]
    [nl,nc]=size(Ab);
    for k=1:nl-1,
        for i=(k+1):nl,
            m=-Ab(i,k)/Ab(k,k);
            Ab(i,k)=0;
            for j=k+1:nc,
            Ab(i,j)=Ab(i,j)+m*Ab(k,j);
        end,
      end,
    end,
       
    n=nc-1;
    A=Ab(:,1:n); //matriz A
    b=Ab(:,nc)//vetor b
    x=zeros(n,1);
    x(n)=b(n)/A(n,n);
    for i=n-1:-1:1,
        soma=0,
        for j=i+1:n,
        soma=soma+A(i,j)*x(j);
      end
      x(i)=(b(i)-soma)/A(i,i);
      end
      endfunction

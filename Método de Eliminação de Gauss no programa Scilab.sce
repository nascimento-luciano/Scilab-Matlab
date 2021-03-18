function x = Eg(Ab)
    //Programa que resolve sistema Ax=b pelo
    //Método de Eliminação de Gauss
    // nl é o número de linhas e nc é o número de colunas da Matriz Ab
    Ab = [1 1 1; 1 -1 1; 1 1 1];
    [nl,nc]=size(Ab);
    for k=1:nl-1,
        for i=(k+1):nl,
            m=-Ab(i,k)/Ab(k,k);
            Ab(i,k)=0;
            for j=k+1:nc,
                Ab(i,j)=Ab(i,j)+m*Ab(k,j);
            end,
        end,
        
    end
        n=nc-1
        A=Ab(:,1:n); //Matriz A
        b=Ab(:,nc)//Vetor b
        x=zeros(n,1);
        x(n)=b(n)/A(n,n);
        for i=n-1:-1:1,
            soma=0
            for j=i+1:n,
                soma=soma+A(i,j)*x(j);
            end,
            x(i)=(b(i)-soma)/A(i,i);
            end 
endfunction

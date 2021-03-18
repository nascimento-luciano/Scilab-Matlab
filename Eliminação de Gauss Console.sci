//Eliminação de Gauss - Console
function x = Gauss(A,b)
    //Substituição de Gauss
    //Com pivoteamento parcial
    //Entrada
    //-->Gauss(A,b)
    //A = Matriz de coeficientes
    //b = Vetor com termos independentes
    //Saída
    //x = Vetor solução
    [m,n] =size(A);
    if m~=n, error(" A matriz deve ser quadrada"); end
        nb = n+1;
        Aug = [A,b];
        //Operações elementares sobre as linhas
        for k = 1:n-1
            for i = k+1:n
                mult = Aug(i,k)/Aug(k,k);
                Aug(i,k:nb) = Aug(i,k:nb)-mult*Aug(k,k:nb);
                end
    end
    //Retrosubstituição
    x = zeros(n,1);
    x(n) = Aug(n,nb)/Aug(n,n);
    for i=n-1:-1:1
        x(i) =(Aug(i,nb)-Aug(i,i+1:n)*x(i+1:n))/Aug(i,i);
        end
    end
endfunction

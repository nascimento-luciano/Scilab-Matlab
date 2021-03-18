A = [10 2 1; 1 5 1; 2 3 10];
b = [7 -8 6];
n = 3;
x_new = zeros(1,n); 
x_old = zeros(1,n);

NMAX = 20; 
tol = 0.0001; 
x_old = [0.7 -1.6 0.6];

for k=1:NMAX    
    // iteracao do metodo de Jacobi
    for i=1:n
        soma = 0.0;
        for j=[1:i-1,i+1:n]
            soma = soma + A(i,j)*x_old(j);
        end
        x_new(i) = (b(i)-soma)/A(i,i);
    end    
    // criterio de parada
    if max(abs(x_new - x_old)) < tol then
        disp('O metodo convergiu para a solucao:')
        disp(x_new)
        disp('Numero de iteracoes:')
        disp(k)
    end
    if k == NMAX then
        disp('O metodo nao convergiu...')
    end
    x_old = x_new;
end


clc
clear
n = 4;
A = [1 2 -1 3;0 1 3 -1;0 0 5 7; 0 0 0 2];
b = [6 -5 21 6];
G = zeros(n,n+1);
for i=1:n
    // obter a matriz aumentada: A e b -> G
    G(i,1:n+1) = [A(i,1:n), b(i)];
end

for i=1:n-1
    //marca o pivô
    G(i,:) = G(i,:)/G(i,i); 
    for j=i+1:n
        //anula elementos abaixo do pivô
        G(j,:) = G(j,:) - G(j,i)*G(i,:); 
    end
end
//marca o ultimo pivô
G(n,:) = G(n,:)/G(n,n);

disp(G)

// obter o sistema equivalente: G -> A e b

// resolver por substituição regressiva


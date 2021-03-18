clc
clear
n = 3;
A = [4 8 4; 2 1 -4; 3 -1 2];
b = [80 7 22];
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



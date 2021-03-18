clc
clear
n = 3;
A = [4 8 4; 2 1 -4; 3 -1 2];
b = [80 7 22];
G = zeros(n,n+1);
for i=1:n
    // Mostrar a matriz: A e b -> G
    G(i,1:n+1) = [A(i,1:n), b(i)];
end

for i=1:n-1
    //representar o pivô
    G(i,:) = G(i,:)/G(i,i); 
    for j=i+1:n
        //Anula elementos abaixo do pivô
        G(j,:) = G(j,:) - G(j,i)*G(i,:); 
    end
end
//Marca o ultimo pivô
G(n,:) = G(n,:)/G(n,n);

disp(G)

// Obter o sistema equivalente: G -> A e b

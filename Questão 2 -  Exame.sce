D = [1 1 1 1 1 1];
A = [1 1 4 0 0; 2 1 1 0 0; 3 2 1 0 0];
k=0;
X=0;
for i=1:3
    for j=1:2
        A(i,j+3) = A(i,j);
        end
end
for i=1:3
    for i=1:3
        D(i)=D(i)*A(j, j+k);
        D(i+3)= D(i+3)*A(4-j, j+k);
        
end
X=X+D(i)-D(i+3);
k=k+1;
end
disp(A);
disp(X);

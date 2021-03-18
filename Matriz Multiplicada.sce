//
a =[1 2; 3 4; 5 6];
b = [1 2 3; 4 5 6];
for i=1:3
    for j=1:3
        c(i,j) =0;
        for k=1:2
            c(i,j =c(i,j)+a(i,k)*b(k,j);
        end
    end
    
end
disp(c);

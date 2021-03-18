a = input("Digitar o vetor linha a = ");
n = size(a);
soma = 0;
for i = 1:n(2)
    soma = soma+a(i)
end
m = soma/n(2);
for i = 1:n(2)
    if a(i)<(m) then
        disp(i)
    end
    
end
disp(p);

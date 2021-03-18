//Dado um vetor mostrar a posição do maior elemento
a = input("Digitar o a matriz a=");
n=size(a);
x=a(1)
for i =2:n(2)
    if x < a(i) then
        x = a(i);
        p = i;
     end
end
disp(x,p);

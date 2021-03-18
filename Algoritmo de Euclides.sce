//O seguinte programa implementa o Algoritmo de Euclides
a = input("Digite um número");
b = input("Digite um número");
r = 1;
while r <> 0
    r = modulo(a, b);
    a = b;
    b = r;
end
printf(" O M.D.C. é %g\n", a);

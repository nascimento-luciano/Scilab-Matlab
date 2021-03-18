//Calcular raiz quadrada de C
c = input ("Digitar valor de c = ");
xa = 1; xf = (xa + c/xa)/2
while xf <> xa
    xa = xf; xf = (xa + c/xa)/2
    
end

printf("raiz quadrada de %10.2f = %10.7f", c, xa);

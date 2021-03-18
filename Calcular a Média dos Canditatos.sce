//Calcular a média de cada candidato
{m,n} = size(nota);
for i=1:m
    soma =0;
    for j=1:n
        soma = soma+nota(i,j);
    end
    media(i)=soma/3;
end
printf("Nome             Media"); //linha de cabeçario
for i=1:m
    printf("-10s %3.1f\n", nome(i), media(i));
   
end

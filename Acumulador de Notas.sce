//Acumulador de Notas
soma = 0;
for i=1:1000
    aluno(i) =input("Digite o nome do aluno","s");
    nota(i) = input("Nota");
    soma = soma+nota(i);
end
media = soma/1000; //Cálculo da média
for i=1:1000
    if nota(i)>=media
        printf("%s\n",aluno(i));
        end
end

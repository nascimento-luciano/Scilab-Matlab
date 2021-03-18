// Algoritmo da Regra de 1/3 de Simpson para resolução para resolução de 
//Integrais Indefinidas

if n = 0 then
    printf("Divisão por zero");
if n<0 then
    printif("intervalo Inválido");
else
    if n/2 <> 0 then
        n <-n+1
        h<-(x-x0)/n
        x<-x0+h
        SomaPares<-0
        SomaImpares<-0
        for i = 1:n-1 do
            if i/2 = 0 then
                SomaPares<-SomaPares + f(x)
            else
                SomaImpares<-SomaImpares + f(x)
                x<-x+h
                
            end-for
                R<-h/3*(f(x0)+f(x)+4*SomaOmpares+2
                printf("O resultado da integral da função f é, ", R);
                end-for

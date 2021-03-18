mode(7)
//   Mini Tutorial para MAP0125
//
// Sintaxe da linguagem do Scilab
// Um programa em scilab é uma sequencia:
// <expressao>[;]
// ou
// <variavel>=<expressao>;
// com o ponto e virgula  a expressao e executada silenciosamente.
2+4.^2 // expressão numerica
(2+sqrt(3-1))>2 // expressão booleana
"Hello" + " World" // expressao de cadeia de caracteres alfanumericos (strings)
a_nome="Pedro"; // atribuicao de variaveis.
a_sobrenome="Tonelli";
a_nome + " " + a_sobrenome // expressao com variaveis
// fim dos exemplos 
// Controle do fluxo de programa:
// Desvio condicional
// if <expressao booleana>, <comandos>; [elseif <eb2> |else], <comandos>; end;
// Exemplo
[ok,a]=getvalue("Um valor a ser comparado com 1","Escolha um número",list("vec",1));
if a<1 then 
 printf("menor"); 
 elseif a==1 then 
   printf("igual"); 
   else printf("maior"); end;
// Desvio condicional com select
// select <expr> ,
//    case <expr1> then <comandos>;
//    case <exprn> then <comandos>; end;
// Exemplo:
Carta=x_dialog("Escolha uma carta K,Q,J", "K");
select Carta,
case "K" then printf("voce escolheu rei\n");
case "Q" then printf("Voce escolheu dama\n");
case "J" then printf("Voce escolheu valete\n");
else printf("Voce escolheu errado\n"); end;
// Laco com for
// for <var>=<vetor>, <comandos> end;
// exemplo;
for i=1:3, for j= 1:5, m(i,j)=1/(2*i+j); end; end; // enche uma matriz 3x5
// laco com while
//while <expressao booleana> ,[|then|do] <comandos>; [else comandos]; end;
iter=0;
while iter<10 do
"Iteracao"+string(iter)
iter=iter+1;
else
printf(" Iter e dez: %i",iter);
end;

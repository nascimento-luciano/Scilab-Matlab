// Tutorial para a geologia
mode(7)
format("v",10);
// Numeros inteiros e reais.
// a. atribuicao: usamos o = para fazr atribuicao de variaveis
u=2.8
v=1.75
a=2
// b. operacoes com numeros
u+v // soma
u*v // multiplicacao
u/a // divisao
u^3 // potenciacao u ao cubo
sqrt(a) // raiz quadrada

// c. funcoes booleanas
u>=v // u maior ou igual a v falso ou verdade
u<>v // u diferente de v
u==v // u igual a v

// d. operadores booleanos
(u>=v)&(u==v) // operador logico E
(u>=v)|(u<v)  // operador logico OU
~(u==v)        // negacao.

// e. constantes predefinidas
%pi // a cosntante PI
%e // Exp(1)
%eps // Menor numero positivo da maquina

// f. Mexendo no formato ou precisao:
format("v", 32);
%pi // compare com o valor acima.

// g. definindo funcoes com deff()
deff("y=f(x)", "y=x.^3-9*x+3"); // defino a funcao f(x)
f(3) // chamada da funcao
f(0)*f(1)<0 // uma expressao booleana;

// h. Uma algoritmo para achar o zero da funcao f
a=0;b=1; // intervalo [a,b]
EPS1=0.0001; EPS2=0.0001; // controle de precisao
X0=(a*f(b)-b*f(a))/(f(b)-f(a)); // chute inicial
iter=0; //controle do numero de iteracoes
// inicio do laco:
while (abs(f(X0))>EPS1)&((b-a)>EPS2),
if f(a)*f(X0)>0 then a=X0; else b=X0; end;
X0=(a*f(b)-b*f(a))/(f(b)-f(a));
iter=iter+1;
end;// fim do laco, e impressao
printf("A raiz eh %f com %i iteracoes\n Fim \n", X0,iter);


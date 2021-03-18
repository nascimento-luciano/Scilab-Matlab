function [raiz,iter]=newton1(f,x0,eps1),
// Acha um zero de f(x) usando o método de newton.
// raiz = aproximacao da raiz procurada
// iter = numero de iteracoes
// f a funcao
// x0 chute inicial
// eps1 precisao
// Acha a derivada da função f
step=0.001;
deff("y=flinha(x)","y=((f(x+step)-f(x))./step)");
// define a função phi
deff("y=phi(x)", "y=x-((f(x))./flinha(x))");
// inicia as iterações: (no maximo 150)
chute=x0;
it=0;
x1=phi(chute);
while (min(abs(f(chute)),abs(x1-chute))>eps1)&it<=150 do
chute=x1; 
x1=phi(chute);
it=it+1;
end;
raiz=x1;
iter=it;
endfunction;

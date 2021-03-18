function y=simpson(f,a,b,n)
// Metodo de Simpson com n repeticoes
// f: funcao, a,b: intervalo de integracao
  h=(b-a)/(2*n);
  Soma=f(a)+f(b);
  for i=1:n-1
    Soma=Soma + 4*f(a+h*(2*i -1)) + 2*f(a+h*2*i);
  end;
  Soma=Soma+4*f(a+(2*n-1)*h);
  y=(h/3)*Soma;
endfunction


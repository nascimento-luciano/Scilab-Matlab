function y = trapezio(f,a,b,n) 
  // integral de f usando método dos trapezios e n repeticoes
  h=(b-a)/n;
  Soma = f(a) + f(b);
  for k=1:n-1 
    Soma=Soma + 2*f(a+k*h);
  end;
  y= (h/2)*Soma;
endfunction


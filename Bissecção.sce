clc; clear;
getf('f.sci');
a = input('forneca o valor inicial do intervalo:');
b = input('forneca o valor final do intervalo:');
NMAX = input('forneca o numero maximo de iteracoes:');
tol = input('forneca o erro de tolerancia:');
for k = 0:NMAX
    Xm = (a+b)/2;
  if f(a)*f(Xm) < 0
      b = Xm;
  else
      a = Xm;      
  end
  if abs(a-b)<tol
    x = (a+b)/2;
    disp('Raiz encontrada: ');
    disp(x);
    break;
  end
  if k == NMAX
    disp('nao convergiu!');
  end
end


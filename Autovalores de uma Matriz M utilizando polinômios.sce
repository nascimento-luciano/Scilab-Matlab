clc
clear
close
// EXTRAI OS AUTOVALORES DA MATRIZ A POR MEIO DAS RAÍZES DO
//POLINÔMIO CARACTERÍSTICO
// CÓDIGO ESCRITO POR DANUSIO GADELHA FILHO
// PERMITIDA REPRODUÇÃO COM OS DEVIDOS CRÉDITOS
format (8) // formato de exibição dos números: um menor número de casas decimais
disp(' ')
disp(' Programa de extração de autovalores por polinômio característico')
disp(' Danusio Gadelha Filho')
disp(' ')
A=[2.5 -1 0;
-1 5 -sqrt(2);
0 -sqrt(2) 10];
L=size(A);
I=eye(L(1),L(2));
disp('Matriz a ser fatorada -->')
disp(' ')
disp(A)
disp(' ')
polcar=det(A-I*%s);
disp('O poliômio característico é: ')
disp(' ')
disp(polcar)
disp(' ')
format (16) // um maior número de casas decimais
lambda=roots(polcar);
disp(' Os autovalores são: ');
disp(' ')
disp(lambda)
disp(' ')
Script com funções adicionais que utilizam polinômios:
clc
clear
close
format (8) // formato de exibição dos números: um menor número de casas decimais
disp(' ')
disp(' Algumas funções extra para polinômios')
disp(' Danusio Gadelha Filho')
disp(' ')
disp(' Fatoração Espectral')
disp(' ')
z=poly(0,'z');
p=(z-1/2)*(2-z)*(3.5-z)*(z-2/7) // Cada raíz de p tem um inverso simétrico que
também é raíz de p
w=sfact(p) // as raízes de w são as raízes antiestáveis de p
disp(' ')
disp(' Verificação: ')
disp(' ')
disp(w*numer(horner(w,1/z))) // igual a p
disp(' ')
disp(' Equação de Bezout')
disp(' p*a+q*b=r')
disp(' ')
p=poly([1 2],'x','c');
q=poly([10 .2],'x','c');
a=poly([2 1/2],'x','c');
b=poly([-5 1],'x','c');
r=p*a+q*b;
[x,err]=diophant([p,q],r)
rapproach=clean(p*x(1)+q*x(2))
r
disp(' ')
disp(' Forma Hermitiana')
disp(' ')
s=poly(0,'s');
disp(' Matriz a ser transformada -->')
disp(' ')
p=[s, s*(s+1)^2; 2*s^2 s-1];
disp(p)
[Ar,U]=hermit(p'*p);
disp(' ')
disp(' Forma Hermitiana de p: ptrans*p*Utrans -->')
disp(' ')
clean(Ar)
disp(' Matriz unimodular U -->')
disp(U)
disp(' ')
detU=clean(det(U))

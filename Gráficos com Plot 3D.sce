mode(7);
//  MAP0125 Calculo Numerico para geologia
//		Plotagem de graficos 3D com plot3d()
// O que faz plot3d()
// Os argumentos basicos de plot3d() sao tres matrizes x, y , z
// x e y sao vetores e z dimx X dimy
x=[0,0.5,1] // Um vetor simples
y=[5, 6, 7, 8] // outro vetor
// A matriz z deve ter 3 linhas e 4 colunas.
z=[1,2,3,4;
  8,6,4,2;
  4,8,12,16] // a matriz z
xbasc()  
plot3d(x,y,z) // comando de plotagem

// Um exemplo mais interessante:
x=linspace(0,2*%pi,50); // faz uma grade no intervalo [0,2pi]
z=sin(x')*cos(x); // Note que e uma mariz coluna vezes uma linha!
xbasc();
plot3d(x,x,z); // ou ainda
xbasc();
plot3d1(x,x,z) // plot3d1 e uma versao colorida

// plotando funcao usando fplot3d

deff("z=f(x,y)","z=x.^2-y.^2"); // definicao da funcao
x=linspace(-1,1,30);  // determinacao da malha
y=linspace(-2,2,30); // variavel y
xbasc();
fplot3d(x,y,f,alpha=54,theta=67) // alpha e theta e para posicionar o grafico
// pode-se usar tambem a versao colorida
xbasc() // para apagar o grafico anterior
fplot3d1(x,y,f,alpha=54,theta=67) // fplot2d1() 
//------ FIM -----------//

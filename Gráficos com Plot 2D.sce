mode(7);
// ----------------------------------------------          
//           GRAFICOS COM plot2d()
// ----------------------------------------------
// plot2d() eh usada para plotar graficos planos
// O comando plot2d(x,y) coloca os pontos (x[i],y[i])
// Precisamos primeiro do par de vetores:
x=[0,0.5,4]' // primeiro um vetor simples.
y=[1,6,4]' // o vetor y deve ter a mesma dimensão que x.
plot2d(x,y) // não tem muita graça este gráfico
xbasc() // este comando apaga o grafico anterior
// Existem 4 versoes do plot2d com estilos diferentes
plot2d1(x,y) // plot2d1() escala logaritmica
xbasc()
plot2d2(x,y) // escadinha
xbasc()
plot2d3(x,y) // barras
xbasc()
plot2d4(x,y) // flechas
// vamos fazer o teste com exemplos mais interessantes:
x=linspace(-4,4,100)'; // um vetor de cem elementos [-4,4]
y=sin(x); // a funcao sin(x) avaliada em cada ponto de x 
yd=x.*cos(x); // uma outra funcao
xbasc()
plot2d(x,y)
xbasc()
plot2d2(x,y)
xbasc()
plot2d3(x,y)
xbasc()
plot2d4(x,y)
// Agora plotamos 2 graficos
xbasc()
plot2d([x,x],[y,yd]) 
// opcoes no plot2d()
plot2d([x,x],[y,yd],style=[-1,3]) //escolhe cores
xbasc()
plot2d([x,x],[y,yd],rect=[-2,-2,2,2]) // retangulo mostrado
// mais informacoes com help plot2d()
// --------------------------------- FIM ---------------------


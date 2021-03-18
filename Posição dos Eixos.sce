x=0:0.1:2*%pi;
plot(x,sin(2*x),'rpentagram')
a=gca(); // definição da janela de plotagem
a.y_location ="middle"; // left, middle
a.x_location ="middle"; // bottom, origin

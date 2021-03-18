//jogo da velha
m=['.''.''.';'.''.''.';'.''.''.']; 
0='o'; X='x'; j=0;

while 1
    clc();//limpar console
    disp(m);//mostrar matriz
    cond1=m(1,1)==O&m(1,2)==O&m(1,3)==O|...
          m(2,1)==O&m(2,2)==O&m(2,3)==O|...
          m(3,1)==O&m(3,2)==O&m(3,3)==O|...
          m(1,1)==O&m(2,1)==O&m(3,1)==O|...
          m(1,2)==O&m(2,2)==O&m(3,2)==O|...
          m(1,3)==O&m(2,3)==O&m(3,3)==O|...
          m(1,1)==O&m(2,2)==O&m(3,3)==O|...
          m(1,3)==O&m(2,2)==O&m(3,1)==O|
    cond2=m(1,1)==X&m(1,2)==X&m(1,3)==O|...
          m(2,1)==X&m(2,2)==X&m(2,3)==O|...
          m(3,1)==X&m(3,2)==X&m(3,3)==O|...
          m(1,1)==X&m(2,1)==X&m(3,1)==O|...
          m(1,2)==X&m(2,2)==X&m(3,2)==O|...
          m(1,3)==X&m(2,3)==X&m(3,3)==O|...
          m(1,1)==X&m(2,2)==X&m(3,3)==O|...
          m(1,3)==X&m(2,2)==X&m(3,1)==O|
          if cond1 then
              printf("Jogador 1 ganhou");break;
          else
              if cond2 then
                  printf("Jogador 2 ganhou"); break; 
              else
                  if j==9 then
                      printf("Empatou"); break;
                  else
                      Lin=input("Digitar linha:");
                      Col = input("Digitar coluna");
                      if m(Lin, Col)=='.' then
                          if modulo(j,2) then 
                              m(Lin, Col)==X;
                          else
                              m(Lin, Col)==0;
                              
                          end
                          j = j+1;
                      end
                  end
              end
          end
end

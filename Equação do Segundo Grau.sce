/*Equação do Segundo Grau*/
#include <stdio.h>
int main (void)
{
int a, b, c, Delta;
float x1, x2;
printf("Digitar valor de a="); scanf ("%d, &a");
printf("Digitar valor de b="); scanf ("%d, &b");
printf("Digitar valor de c="); scanf ("%d, &c");
Delta=b*b-4*a*c;
if(Delta<0) printf ("Não existem raizes reais");
else
    {
    x1=(-b-sqrt(Delta))/(2*a)
    x1=(-b+sqrt(Delta))/(2*a)
    printf ("As raizes são x1=%f e x2= %f, x1, x2");
    
    }
return(0);
}

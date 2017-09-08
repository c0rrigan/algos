/**
 * Programa que calcula el valor de seno de x utilizando 
 * la serie de Maclaurin
 * Nava Lopez Sebastian 1CV2
 **/
#include <stdio.h>
#define	SERIES 30 
double fact(double n);
double pown(double powner,double n);
double sinmc(double x);
int main(){
    double x;
    printf("sin(x)\nIntroducir x en grados: ");
    scanf("%lf",&x);
    x = x*(3.1416/180.0);
    printf("%lf\n",x);
    printf("sin(x)=%lf\n",sinmc(x));
    return 0;
}
double sinmc(double x){
    double value = x;
    int sign=-1;
    int i;
    for(i=3;i<SERIES;i+=2){
	value+=sign*(pown(i,x)/fact(i));		
	sign*=-1;
    }
    return value;
}
double pown(double power,double n){
    double r = 1;
    while(power-->0)
	r*=n;
    return r;
}
double fact(double n){
    double r=1;
    while(n>1)
	r*=n--;
    return r;
}


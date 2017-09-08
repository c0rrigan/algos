/**
 * Programa que calcula la aproximación al coseno de x
 * utilizando las series de Maclaurin
 * Nava Lopez Sebastian 1CV2
 **/
#include <stdio.h>
#define SERIES 30
double fact(double n);
double pown(double powner,double n);
double cosmc(double x);
int main(){
    double x;
    printf("cos(x)\nIntroduzca valor de x en grados: ");
    scanf("%lf",&x);
    x = x*(3.1416/180.0);
    printf("cos(x)=%lf\n",cosmc(x));
    return 0;
}
double cosmc(double x){
    double value = 1;
    int sign=-1;
    int i;
    for(i=2;i<SERIES;i+=2){
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


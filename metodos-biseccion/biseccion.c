#include <stdio.h>
double fun(double x);
double bisect(double,double,double,int);

int main(){
    int iter;
    double a,b,err; 
    printf("Introduzca puntoA\n");
    scanf("%lf",&a);
    printf("Introduzca puntoB\n");
    scanf("%lf",&b);
    printf("Introduzca error\n");
    scanf("%lf",&err);
    printf("Introduzca iteraciones\n");
    scanf("%d",&iter);
    printf("%lf",bisect(a,b,err,iter));
}

double fun(double x){
    return (x*x*x+5*x*x-3*x-4);
}
double bisect(double a,double b,double err,int iter){
    int i;
    double c,ea,ca;
    ea=0;
    for(i=0;i<iter;i++){
        c = (a+b)/2;
        printf("c:%lf\n",c);
        if(fun(a)*fun(c)<0.0)
            b=c;
        else if(fun(a)*fun(c)>0.0)
            a=c;
        //Calcular el error
        ea=(c-ca)/2;
        ea*=(ea>0)?1:-1;
        printf("err:%lf\n",ea);
        if(ea<=err)
            return c;
        ca = c; 
        //printf("Error:%lf\n",(ea/c)*100);
    }
    return c;
}

#include <stdio.h>

double f(double x);
int main(){
    double a,b,c,ea;
    a = -2;
    b = -1;
    int n,i;
    n = 30;
    for(i=0;i<n;i++){
	c = (a+b)/2;
	if(f(a)*f(c)<0){
	    printf("1\n");
	    b = c;
	}else if(f(a)*f(c)>0){
	    printf("x\n");
	    a = c;
	}else{
	    printf("%lf\n",c);
	    return 0;
	}
    }
}
double f(double x){
    return x*x-2;
}





#include <stdio.h>

int isprime(unsigned int n);
int main(){
    printf("%d\n",isprime(9));
    return 0;
}
int isperfect(int x){
    unsigned int x,p,y,i;
    if(isprime(x))    
}
int isprime(unsigned int n){
    int i;
    for(i=2;(i*i)<=n;i++){
	if(n%i==0){
	    return 0;
	}
    }
    return 1;
}

    


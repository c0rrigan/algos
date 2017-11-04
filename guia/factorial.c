#include <stdio.h>

int factorial(int n,int res){
    if(n==0)
        return res;
    factorial(--n,n*res);
}
int main(){
    printf("%d",factorial(9,1));
    return 0;
}


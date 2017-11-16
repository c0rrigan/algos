#include <stdio.h>

int main(){
    int n,i;
    n=1299709;
    //n=10;
    for(i=2;i*i<n;i++){
        if(n%i==0){
            printf("%d No primo\n",i);
            return 0;
        }
    }
    printf("Primo\n");
    return 0;
}

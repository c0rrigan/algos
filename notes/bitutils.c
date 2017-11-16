#include <stdio.h>

void printbits(int n){
    if(n>0){
        printf("%d",n%2);
        printbits(n/2);
    }
}
void ctoi(int n,char arr[]){
    int i;
    for(i=7;i>=0;i--){
        arr[i]=n%2;
        n/=2;
    }
    for(i=0;i<8;i++){
        printf("%d",arr[i]);
    }
}
    

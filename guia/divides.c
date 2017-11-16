#include <stdio.h>

char divides(int a,int b){
    return (a/b>0)?1:0;
}

int main(){
    printf("%d",divides(1,2));
    printf("%d",divides(4,2));
    printf("%d",divides(1,1));
    return 0;
}

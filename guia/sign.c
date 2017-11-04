#include <stdio.h>

char getsign(int n){
    return (n<=0)?'N':'P';
}

int main(){
    printf("%c",getsign(-1));
    printf("%c",getsign(0));
    printf("%c",getsign(1));
    return 0;
}

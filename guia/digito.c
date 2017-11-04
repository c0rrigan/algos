#include <stdio.h>

char digito(char c){
    return (c>='0'&&c<='9')?1:0;
}
int main(){
    printf("%d",digito('c'));
    printf("%d",digito('0'));
    printf("%d",digito('9'));
    printf("%d",digito('8'));
    return 0;
}

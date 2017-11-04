#include <stdio.h>

int main(){
    int n;
    scanf("%d",&n);
    if(n==2)
        printf("28 days\n");
    else if((n<8&&n%2==0)||(n>8&&n%2==1))
        printf("30 days\n");
    else
        printf("31 days\n");
}

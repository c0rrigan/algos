#include <stdio.h>
#include "bitutils.h"
int lrot(int,int);

int main(){
	printf("%d\n",lrot(100000,30));
}
int lrot(int x,int b ){
	int r,x1;
    printf("original:");
    printbits(x);
    printf("\n");
    printf("shift1:");
	x1=x>>(32-b);
    printbits(x1);
    printf("\n");
    printf("r:");
	r=x<<b;
    printf("%hx\n",r);
    printbits(r);
    printf("\n");
	r+=x1;
    printf("r+x1");
    printbits(r);
    printf("\n");
	return r;
}

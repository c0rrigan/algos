#include <stdio.h>

int lrot(int,int);

int main(){
	printf("%d\n",lrot(10,1));
}
int lrot(int x,int b ){
	int r,x1;
	x1=x>>(32-b);
	r=x<<b;
	r+=x1;
	return r;
}

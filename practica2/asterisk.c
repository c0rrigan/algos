#include <stdio.h>

void printasterisks(int n);
int main(){
    int n;
    printf("Inserte número\n");
    scanf("%d",&n);
    printasterisks(n);

}
void printasterisks(int n){
    int b;
    int step=1;
    for(b=n;b>0;b--){
	int i;
	for(i=0;i<(b-1);i++)
	    printf(" ");
	printf("*");
	if(b<n){
	    for(i=0;i<step;i++)
		printf(" ");
	    printf("*");
	    step+=2;
	}
	printf("\n");
    }
    step -=4;
    for(b=1;b<=(n-1);b++){
	int i;
	for(i=0;i<b;i++)
	    printf(" ");
	printf("*");
	for(i=0;i<step;i++)
	    printf(" ");
	if(b<(n-1)){
	    printf("*");
	    step-=2;
	}
	printf("\n");
    }
}


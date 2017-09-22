#include <stdio.h>

void initarray(int[],int);
void printarr(int[],int);
int main(){
    int n,i,j;
    n = 8;
    //printf("Introduzca numeros \n");
    //scanf("%d",&n);
    int buffer[n+1];
    int nums[n+1];
    initarray(buffer,n);
    initarray(nums,n);
    buffer[n]=1;
    for(i=n;i>=0;i--){
	int k;
	//print spaces
	for(j=0;j<i;j++)
	    printf(" ");
	for(j=i;j<n;j++){
	    k=buffer[j]+buffer[j+1];
	    printf("%d  ",k);
	    buffer[j]=k;
	}
	printf("1\n");
    }
    return 0;
}

void initarray(int arr[],int n){
    while(n>=0)
	arr[n--]=0;
}
void printarr(int arr[],int n){
    int i;
    for(i=0;i<=n;i++)
	printf("[%d]:%d",i,arr[i]);
    printf("\n");
}

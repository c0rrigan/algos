#include <stdio.h>

void initarray(int[],int);
void printarr(int[],int);
int main(){
    int n,i;
    printf("Introduzca numeros \n");
    scanf("%d",&n);
    int buffer[n+1];
    int nums[n+1];
    buffer[n]=1;
    initarray(buffer,n);
    initarray(nums,n);
    //printarr(buffer,n);
    for(i = n;i>0;i--){
	//Print spaces 
	int j;
	for(j=0;j<i;j++)
	    printf(" ");
	for(j=i;j<n;j++)
	    nums[j]=buffer[j+1]+buffer[j];
	for(j=i;j<n;j++){
	    buffer[j]=nums[j];
	    printf("%d ",nums[j]);
	}
	printf("\n");
    }
    return 0;
}

void initarray(int arr[],int n){
    while(n--!=0)
	arr[n]=0;
}
void printarr(int arr[],int n){
    int i = 0;
    while(i<n)
	printf("%d\n",arr[i++]);
}

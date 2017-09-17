#include <stdio.h>

int main(){
	int n,i;
	printf("Introduzca numeros \n");
	scanf("%d",&n);
	int buffer[n+1];
	int nums[n+1];
	buffer[0]=1;
	buffer[n]=1;
	for(i = n;i>0;i--){
		printf("i:%d",i);
		int j;
		for(j=i;j>0;j--)
			printf("s");
		nums[n]=1;
		if(i<=n-2){
			for(j = i+1;j<n;j++){	
				nums[j]=buffer[i+1]+buffer[i-1];
				printf("buff -1: %d",buffer[j-1]);
				printf("buff +1: %d",buffer[j+1]);
			}
		}
		buffer[n]=1;
		for(j = i;j<n;j++){
			buffer[j-1]=nums[j];
			//printf("%d  ",nums[j]);	
		}	
		printf("\n");	
	}
	return 0;
}

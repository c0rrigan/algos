#include <stdio.h>
/**Programa que calcula los primeros n números perfectos**/
int main(){
	unsigned int n;
	int i;
	printf("Introduzca numero:\n");
	scanf("%d",&n);
	for(i=1;i<n;i++){
		int div,suma;
		suma=0;
		for(div=1;div<i;div++){
			if(i%div==0){
				suma+=div;
			}
		}
		if(i==suma)
			printf("Número %d perfecto\n",i);
	}
	return 0;
}

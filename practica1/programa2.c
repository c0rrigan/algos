/**Programa que transforma el input en formato hh:mm 24 hr en hh:mm de 12 h**/
#include <stdio.h>

int main(){
    unsigned int hh,mm;
    printf("Escribir hora(formato hh:mm )\n");
    scanf("%d:%d",&hh,&mm);
    if(hh>=0&&hh<=24&&mm>=0&&mm<60){
	if(hh==0)
	    printf("%02d:%02d AM\n",12,mm);
	else if(hh>12)
	    printf("%02d:%02d PM\n",hh-12,mm);
	else if(hh==12)
	    printf("%02d:%02d PM\n",hh,mm);
	else
	    printf("%02d:%02d AM\n",hh,mm);
    }
    else{
	printf("Formato incorrecto");
    }
}

#include <stdio.h>

int stpsearch(char[],int,char[]);
int strsize(char[]);
void strsearch(char[],char[]);

int main(){
    //char w1[] = "0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15";
    //char w2[] = ",";
    char w1[256],w2[256];
    printf("Introduzca palabra 1");
    scanf("%s",&w1); 
    printf("Introduzca palabra 1");
    scanf("%s",&w2); 
    strsearch(w1,w2);
}
/**
 * Funcion que imprime las ocurrencias de la cadena2 dentro
 * de la cadena 1
 */
void strsearch(char str1[],char str2[]){
    int i,size;
    size=strsize(str2);
    for(i = 0;str1[i]!='\0';i++){
	if(str1[i]==str2[0]){
	    if(stpsearch(str1,i,str2)){
		printf("%d\n",i);
		i+=size;
	    }
	}
    }
}
/**
 * Función para buscar la cadena 2 dentro de la cadena 1 
 * a partir del index pos
 */
int stpsearch(char w1[],int pos,char w2[]){
    int i;
    for(i = 0;w2[i]!='\0';i++){
	if(w1[pos++]!=w2[i]){
	    return 0;
	}
    }
    return 1;
}
/**
 * Funcion para encontrar el tamaño de una cadena
 */
int strsize(char str[]){
    int i = 0;
    while(str[i++]!='\0');
    return i-1;
}

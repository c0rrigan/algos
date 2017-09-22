#include <stdio.h>
/*Programa que imprime el triángulo de Pascal
 * Nava Lopez Sebastian 1CV2
 */
void initarray(int[],int);
void printarr(int[],int);
int main(){
    int n,i,j;
    printf("Introduzca numeros \n");
    scanf("%d",&n);
    /*Declarar un buffer de números con n+1 posiciones,
     * el buffer va a contener los números de la línea
     * anterior y en base a el se van a calcular las 
     * posiciones siguientes*/
    int buffer[n+1];
    //Inicializar el buffer
    initarray(buffer,n);
    //Declarar como 1 la última posición del buffer
    buffer[n]=1;
    for(i=n;i>=0;i--){
        int k;
        for(j=0;j<i;j++)
            printf(" ");
        for(j=i;j<n;j++){
            k=buffer[j]+buffer[j+1];
            printf("%d ",k);
            buffer[j]=k;
        }
        printf("1\n");
    }
    return 0;
}
/*Funcion para inicializar todas las posiciones del arreglo en 0*/
void initarray(int arr[],int n){
    while(n>=0)
	arr[n--]=0;
}

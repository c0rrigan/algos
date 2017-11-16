#include <stdio.h>

int ctoi(unsigned char c){
    return c-'0';
}
void add(unsigned char num1[],unsigned char num2[],unsigned char nadd[]){
    char carry=0;
    int i = 0;
    while(num1[i]!=0 && num2[i]!=0){
        nadd[i]=ctoi(num1[i])+ctoi(num2[i])+carry;
        carry=nadd[i]/10;
        nadd[i]=nadd[i]%10;
        printf("%d\n",nadd[i++]);
    }
    nadd[i]=carry;
    printf("%d\n",nadd[i]);
    //falta invertir el arreglo
}
int main(){
    unsigned char num1[]="987654321";
    unsigned char num2[]="123456789";
    unsigned char nadd[10];
    add(num1,num2,nadd);
}


#include <stdio.h>

void strreflex(char strr[],char str[]){
    int i,j,k;
    k=0;
    for(i=0,j=0;str[i]!='\0';i++,j++){
        strr[j]=str[i];
        if(str[i]==' '){
            int m;
            for(m=i-1;m>=k;m--){
                strr[j++]=str[m];
                printf("%c",strr[j]);
            }
            k=i;
            strr[++j]=' ';
            printf("%c",strr[j]);
        }
        printf("%c\n",strr[j]);
    }
}

int main(){
    char str[]="Escuela Superior de Computo";
    char strr[9999];
    strreflex(strr,str);
    int i =0;
    while(str[i]!='\0')
        printf("%c",strr[i++]);
    return 0;
}


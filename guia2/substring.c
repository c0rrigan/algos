#include <stdio.h>
#include <stdlib.h>
char *substring(char **str,int ini,int nchars){
    int i,j;
    char *sub=(char *)malloc(sizeof(char)*(nchars+1));
    for(i=0,j=ini;i<nchars&&str[0][i]!='\0';i++,j++)
        sub[i]=str[0][j];
    sub[nchars]='\0';
    return sub;
}
int main(){
    char *str="Escuela Superior de Computo";
    char **addr = &str;
    printf("%s\n",substring(addr,0,1)); 
}




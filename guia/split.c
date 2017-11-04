#include <stdio.h>

int main(){
    char str[]="Escuela Superior de Computo"

    return 0;
}

void split(char str[],char sep[]){
    int i;
    for(i=0;str[i]!='\0';i++){
        if(str[i]==sep[0]){
            int j;
            for(j=0;sep[j]!='\0';j++){
                if(str[i++]!=sep[j])
                    break;

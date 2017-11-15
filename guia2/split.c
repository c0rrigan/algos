#include <stdio.h>
#include <stdlib.h>
char **split(char*,char*);
int ssize(char*);
int contains(char*,char*);
char *copy(char*,int,int);
int main(){
    char *str = "Escuela Superior de Computo";
    char *sep = " ";
    char **S = split(str,sep);
    int i;
    return 0;
}
char **split(char *str,char *sep){
    char **S = (char**)malloc(sizeof(char*)*(ssize(str)/ssize(sep)));
    int i,index=0,start=0,sep_size=ssize(sep);
    for(i=0;str[i]!='\0';i++){
        if(str[i]==sep[0]){
            if(contains){
                S[index++]=copy(str,start,i);
                printf("%s\n",S[index-1]);
                start=i+sep_size;
            }
        }
    }
    S[index++]=copy(str,start,i);
    printf("%s\n",S[index-1]);
    S[index]="";
    return S;
}
int ssize(char *str){
    int i;
    for(i=0;str[i]!='\0';i++);
    return i;
}
char *copy(char *str,int a,int b){
    int j,k;
    char *st=(char *)malloc(sizeof(char)*(b-a));
    for(j=a,k=0;j<b;j++,k++)
        st[k]=str[j];
    st[b]='\0';
    return st;
}
int contains(char *w1,char *w2){
    int i;
    for(i=1;w2[i]!='\0';i++){
        if(w1[i]!=w2[i])
            return -1;
    }
    return i;
}

/**Problema 28*/
#include <stdio.h>
int basetodec(char[],int);
int ctoi(char);
int power(int,int);
int main(){
    char str[]="9C5545";    
    printf("%d\n",basetodec(str,16));
    printf("%d\n",ctoi('A'));
}
int basetodec(char str[],int base){
    int i = 0;
    int num = 0;
    int size;
    while(str[i++]!=0);
    i-=2;
    size = i;
    for(;i>=0;i--){
        num+=(ctoi(str[size-i])*power(base,i));
//        printf("i:%d str:%c num:%d\n",i,str[i],num);
    }
    return num;
}
int ctoi(char c){
    return (c>='A' && c<='F')?c-'A'+10:c-'0';
}
int power(int b,int n){
    int res = 1;
    while(n--)
        res*=b;
    return res;
}

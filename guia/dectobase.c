#include <stdio.h>

char itoc(int x){
    return (x>=10&&x<=15)?'A'+x-10:'0'+x;
}
void dectobase(char str[],int x,int base){
    int i=0;
    int size;
    while(x>0){
        str[i++]=itoc(x%base);
        x/=base;
//        printf("%c\n",str[i++]);
    }
    size=i-1;
    for(i=0;i<size/2;i++){
        char temp;
        temp=str[i];
        str[i]=str[size-i];
        str[size-i]=temp;
    }
    for(i=0;i<=size;i++)
        printf("%c",str[i]);
}
int main(){
    char str[100];
    int x = 10245445;
    int base = 16; 
    dectobase(str,x,base);
}



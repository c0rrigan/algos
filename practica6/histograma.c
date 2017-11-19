#include <stdlib.h>
#include <stdio.h>
#define MAX_LINES 100
#define LINE_SIZE 30
int V[5];
char VO[]={'A','E','I','O','U'};

int main(){
    char c;
    int i,j,n=4;
    do{
        printf("Número de líneas :\n");
        scanf("%d",&n);
    }while(n<1&&n>MAX_LINES);
    for(i=0;i<n;i++){
        while(c=getchar()){
            if(c=='\n'||j==30){
                break;
            }
            c=(c>='A'&&c<='Z')?'a'+c-'A':c;
            switch(c){
                case 'a':
                    V[0]++;
                    break;
                case 'e':
                    V[1]++;
                    break;
                case 'i':
                    V[2]++;
                    break;
                case 'o':
                    V[3]++;
                    break;
                case 'u':
                    V[4]++;
                    break;
            }

        }
    }
    for(i=0;i<sizeof(V)/sizeof(int);i++){
        printf("%c :",VO[i]);
        for(j=0;j<V[i];j++)
            printf("#");
        printf("\n");
    }
}

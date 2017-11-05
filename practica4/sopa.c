#include <stdio.h>
#include <stdlib.h>
//Tamaño de la matriz
#define GRID_SIZE 18
//Diccionario de palabras de la sopa de letras
char dict[][GRID_SIZE] = {"practica","programacion"};/*,"internet","diferencial","calculo","informacion111111"};*/
void print_cmatrix(char w[][GRID_SIZE]);
void setwrd(char w[][GRID_SIZE],char dictionary[][GRID_SIZE]);
int wsize(char w[]);
void sopa(){
    int i,j;
    int range = 'z'-'a';
    char w[GRID_SIZE][GRID_SIZE];
    for(i=0;i<GRID_SIZE;i++){
        for(j=0;j<GRID_SIZE;j++){
            w[i][j]='a'+rand()%range;
        } 
    }
    setwrd(w,dict);
    print_cmatrix(w);
}
void setwrd(char w[][GRID_SIZE],char dictionary[][GRID_SIZE]){
    int n;
    n = sizeof(dict)/GRID_SIZE*sizeof(char);
    printf("debug:%d\n",n);
    while(--n>=0){
        int end;
        int x = rand()%GRID_SIZE-1;
        int y = rand()%GRID_SIZE-1;
        int size = wsize(dictionary[n]);
        printf("debug:n=%d size=%d x=%d y=%d\n",n,size,x,y);
        int i,j;
        y=16;
        if(x%2==0){
            for(i=0;i<size;y++,i++){
                if(size<y){
                    w[x][y-i]=dictionary[n][i]-32;
                }
                    w[x][y]=dictionary[n][i]-32;
            }
        }else{
            i++;
        }
    }
}
int wsize(char w[]){
    unsigned int i = 0;
    while(w[i++]!='\0');
    return i-1;
}

void print_cmatrix(char w[][GRID_SIZE]){
    int i,j;
    for(i=0;i<GRID_SIZE;i++){
        for(j=0;j<GRID_SIZE;j++){
            printf("%c ",w[i][j]);
        }
        printf("\n");
    }
}
int main(){
    sopa();
    return 0;
}

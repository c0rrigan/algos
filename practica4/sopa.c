#include <stdio.h>
#include <stdlib.h>
//Tamaño de la matriz
#define GRID_SIZE 20
//Diccionario de palabras de la sopa de letras
char dict[][GRID_SIZE] = {"PRACTICA","PROGRAMACION"};//,"internet","diferencial","calculo","informacion111111"};*/
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
        int posis[]={14,2,11,4};
        //int x = rand()%GRID_SIZE-1;
        //int y = rand()%GRID_SIZE-1;
        int x = posis[n+1];
        int y = posis[n];
        int size = wsize(dictionary[n]);
        printf("debug:n=%d size=%d x=%d y=%d\n",n,size,x,y);
        int i,j;
        if(x%2==0){
            if(y+size>=GRID_SIZE){
                y=y-(y+size-GRID_SIZE);
            }
            for(i=0;i<size;y++,i++){
                w[x][y]=dictionary[n][i];
            }
        }else{
            if(x+size>=GRID_SIZE){
                x=x-(x+size-GRID_SIZE);
            }
            for(i=0;i<size;x++,i++){
                w[x][y]=dictionary[n][i];
            }
        }
        printf("\n\n");
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

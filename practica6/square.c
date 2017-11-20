#include <stdio.h>
#include <stdlib.h>

int **get_matrix(int);
void print_sq_matrix(int**,int);
void free_matrix(int**,int);
void magic_square(int**,int);
void move(int**,int,int,int);

int main(){
    int n=1;
    do{
        printf("Escriba el número n de columnas para el cuadrado\n");
        scanf("%d",&n);
    }while(n%2!=1);
    int **M=get_matrix(2*n-1);
    magic_square(M,n);
    print_sq_matrix(M,n);
    free_matrix(M,2*n-1);
    return 0;
}
void magic_square(int **M,int n){
    int k,l,i,j,step,m=1;
    int h=n-1-n/2;
    for(k=n-1,l=0;k<n*2-1;k++,l++){
        for(i=k,j=l,step=0;step<n;step++,i--,j++){
            M[i][j]=m++;
        }
    }
    for(i=n-1,j=0,step=0;i<n*2;i+=n-1,j+=n-1){
        int a=i,b=j,pass=n-1-n/2;
        for(i=0;i<2*n-1;i++){
            if(i<h||i>=n+h){
                for(j=h;j<2*n-h;j++){
                    if(M[i][j]!=0)
                        move(M,i,j,n);
                }
            }else{
                for(j=0;j<h;j++){
                    if(M[i][j]!=0)
                        move(M,i,j,n);
                    if(M[i][n+h+j]!=0)
                        move(M,i,n+h+j,n);
                }
            }
        }
    }
}

void move(int **M,int y,int x,int n){
    int center = n-1;
    int h=n-1-n/2;
    int x0=x,y0=y;
    if(x+y<2*center){
        if(x<h)
            x+=n;
        if(y<h)
            y+=n;
    }else{
        if(x>center+h)
            x-=n;
        if(y>center+h)
            y-=n;
    }
    M[y][x]=M[y0][x0];
}

int **get_matrix(int n){
    int i;
    int **M=(int **)malloc(sizeof(int*)*n);
    for(i=0;i<n;i++){
        int j;
        int *row=(int*)malloc(sizeof(int)*n);
        for(j=0;j<n;j++)
            row[j]=0;
        M[i]=row;
    }
    return M;
}
void free_matrix(int **M,int n){
    int i,j;
    for(i=0;i<n;i++)
        free(M[i]);
    free(M);
}
void print_sq_matrix(int **M,int n){
    int i,j;
    int h=n-1-n/2;
    for(i=h;i<n+h;i++){
        for(j=h;j<n+h;j++){
            printf("%3d ",M[i][j]);
        }
        printf("\n");
    }
    printf("\n");
}

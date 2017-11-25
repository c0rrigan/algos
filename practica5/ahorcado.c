#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#define MAX_WORD_SIZE 30
void print_man(int state);
int setgame();
int wsize(char w[]);
void clean(char w[]);
int contains(char[],char[],char);
void start_game();
int iscomplete(char[],char[]);

char dict[][MAX_WORD_SIZE]={"perro","pajaro","paraiso","semana","tecnico"};
char man[][7]=
{"_____  ",
    "|    | ",
    "|      ",
    "|      ",
    "|      ",
    "L______"};

int main(){
    start_game();
    return 0;
}
void start_game(){
    time_t current_time;
    current_time=time(NULL);
    srand(current_time);
    int guess_word = setgame();
    int state = 0;
    char user_w[MAX_WORD_SIZE];
    int w_size = wsize(dict[guess_word]);
    clean(user_w);
    while(state<6){
        int i;
        char c;
        for(i=0;i<w_size;i++){
            printf("%c ",user_w[i]);
        }
        printf("\n");
        scanf(" %c",&c);
        printf("\n");
        if(!contains(dict[guess_word],user_w,c))
            state++;
        if(iscomplete(dict[guess_word],user_w)){
            for(i=0;i<w_size;i++){
                printf("%c ",user_w[i]);
            }
            printf("\n");
            break;
        }
        print_man(state);
    }
}
//Regresa el indice de la palabra del arreglo dict que se va a usar para jugar
int setgame(){
    int dict_size = sizeof(dict)/30*sizeof(char);
    return rand()%dict_size;
}
//Función para obtener el tamaño de una secuencia de caracteres
int wsize(char w[]){
    unsigned int i = 0;
    while(w[i++]!='\0');
    return i-1;
}
//Función para llenar de guiones bajos el arreglo del argumento
void clean(char w[]){
    unsigned int i = 0;
    while(i<MAX_WORD_SIZE)
        w[i++]='_';
}
//Función para verificar si el caracter de la palabra ya ha sido descubierto
int contains(char w[],char wu[],char c){
    int i;
    for(i=0;w[i]!='\0';i++){
        if(w[i]==c){
            if(wu[i]=='_'){
                wu[i]=c;
                return c;
            }
        }
    }
    return 0;
}
//Función para imprimir el dibujo del hombre
void print_man(int state){
    if(state>=1)
        man[2][5]='0';
    if(state>=2)
        man[3][5]='|';
    if(state>=3)
        man[3][4]='-';
    if(state>=4)
        man[3][6]='-';
    if(state>=5)
        man[4][4]='/';
    if(state>=6)
        man[4][6]='\\';
    int i;
    int j;
    for(i=0;i<=5;i++){
        for(j=0;j<=6;j++){
            printf("%c",man[i][j]);
        }
        printf("\n");
    }
    printf("\n");
}
int iscomplete(char w1[],char w2[]){
    int i;
    for(i=0;w1[i]!='\0';i++){
        if(w2[i]=='_')
            return 0;
    }
    return 1;
}

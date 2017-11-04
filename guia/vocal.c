#include <stdio.h>

char vocal(char c){
    if(c=='a'||c=='A'||c=='e'||c=='E'||c=='i'||c=='I'||c=='o'||c=='O'
            ||c=='u'||c=='U')
        return 1;
    return 0;
}

int main(){
    printf("%d",vocal('a'));
    printf("%d",vocal('A'));
    printf("%d",vocal(1));
    return 0;
}

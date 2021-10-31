#include "cortos.h"
int c[] = {2,3,0};
int b;

int max(int n1, int n2,int n3){
    int a = n1;
    if(n2 >= a){
        a = n2;
    }
    if(n3 >= a){
        a = n3 ;
    }  
    return(a);
}
void main(){


    b = max(c[0], c[1], c[2]);
    CORTOS_INFO("The max number is %d", b);
    cortos_exit(0);
}


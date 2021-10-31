#include "cortos.h"
int a =2;
int b =3;
void swap(int* n1,int* n2){
    int y = *n1;
    *n1 = *n2;
    *n2 = y;
    return;

}
void main(){
    
    
    swap(&a, &b);
    CORTOS_INFO("%d", a);
    CORTOS_INFO("%d",b);
    cortos_exit(0);
}

#include "cortos.h"
int num =4 ;
int i = 0;
void main(){
    for(i=1; i<= num; i++){
        CORTOS_INFO("A");
    }
    cortos_exit(0);
}

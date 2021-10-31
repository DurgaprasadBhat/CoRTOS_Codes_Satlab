#include "cortos.h"
int n =3 ;
float price(int x){
    float a = 0;
    if(x ==0){
        return 20000;
    }
    a = price(x-1);
    float red = (a - 12000)*(a - 12000)/20000;
    return a-red;
}

void main(){
    float f = price(n);
    	CORTOS_INFO("The cost is %d", (int)f);
       cortos_exit(0);
}

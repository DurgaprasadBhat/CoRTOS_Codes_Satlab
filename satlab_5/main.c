#include "cortos.h"
int ar[] = {1,5, 3, 5,2,8};
int c;

int peak(int a[],int n){
    int i =1 ;
    if(n ==0 ){
        return 0;
    }
    if(a[0]>= a[1]) return 0;
    if(a[n-1]>= a[n-2]) return n-1;
    for(i = 1 ; i< n-1 ; i++){
        if(a[i] >= a[i-1] && a[i] >= a[i+1]) return i;
    } 
}

void main(){
     
    c = peak(ar, 6);
   CORTOS_INFO("%d", c);
   cortos_exit(0);
}

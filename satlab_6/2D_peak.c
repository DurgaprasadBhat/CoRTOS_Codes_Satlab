#include "cortos.h"
int x[3][3] = {{10, 20 ,15},{21, 30, 14}, {7, 16, 32}};
int a;
int peak(int a[3][3], int m, int n){
    int i =0;
    int j = 0;
    for(i=0; i<n; i++){
        for(j=0; j<m; j++){
            int e = 1 ;int b = 1 ;int c =1; int d=1;
            if(i-1>=0){
                if(a[i][j]>= a[i-1][j]){
                   e =1;}
                else{ e =0 ;}
            }
            if(i +1 <m){
                if(a[i][j]>= a[i+1][j]){ b =1 ;} 
                 else {b =0 ;}
            }
            if(j-1>= 0){
                if(a[i][j]>= a[i][j-1]){ c =1;}
                else {c =0;}

            }
            if(j+1 < n ){
                 if(a[i][j] >= a[i][j+1]){ d= 1;}
                 else {d =0;}
            }
            if(c +d +e +b == 4){
                return a[i][j];
            }
        }
    }
}



void main(){

    a =peak(x, 3, 3);
    CORTOS_INFO("%d", a);
cortos_exit(0);
}

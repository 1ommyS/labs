//
//  main.c
//  main
//
//  Created by Иван Березуцкий on 24.10.2022.
//
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

struct iPoint {
    int x,  y;
};

int sign(int a) {
    if (a>0) return 1;
    if (a==0) return 0;
    return -1;

}

int max(int a, int b,int c) {
    
    if (a>=b && a>=c) return a;
    if (b>=a && b>=c) return b;
    if (c>=a && c>=b) return c;
    return 0;
}

int min(int a, int b) {
    return a <b ? a :b;
}

int mod (int a,int b) {
    return a-(a/b)*b;
}

const int x1_=10, y1_=10, r1=5,r2=10;
const struct iPoint v1 = {x1_, y1_};



bool isPointInArea(int x, int y) {
    bool f = (x-10)*(x-10)+(y-10)*(y-10) >= 25;
    bool s = (x-10)*(x-10)+(y-10)*(y-10) <= 100;
    if (s && f) return true;
    return false;
}

int main() {
    
    const int i0 = 26, j0 = 8, l0 = -3;
    int i=i0, j=j0, l=l0, k=0;
    while(!isPointInArea(i, j)){
        if(k==50) break;
        printf("(i,j) = (%d,%d)\n", i, j);
        printf("l = %d\n", l);
        printf("k = %d\n", k);
        int i_prev = i, j_prev = j, l_prev = l;
        i = (min(i_prev+j_prev, i_prev+l_prev)*(k+1)) % 30;
        j = j_prev+(l_prev*sign(j_prev)) % 20+(k*sign(i_prev)) % 10;
        l = (max(i_prev*j_prev, i_prev*l_prev, j_prev*l_prev)) % 30;
        k++;
    }
    if(k==50 && !isPointInArea(i, j))
        printf("The point didn't reach the area in 50 steps\n");
    else
        printf("Point reached the area less or equal then 50 steps(%d)\n", k);
    printf("The coordinates are (%d, %d)\n", i, j);
    printf("The dynamic parameter of running is %d\n", l);
}

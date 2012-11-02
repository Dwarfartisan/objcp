//
//  main.c
//  practice
//
//  Created by nangua on 12-11-2.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int i = 99;
    while ( i != 0) {
        printf("%d\n",i);
        if(i % 5 == 0){
            printf("Found one!\n");
        }
        i--;
    }
    
    return 0;
}


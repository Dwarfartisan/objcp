//
//  main.c
//  practice
//
//  Created by nangua on 12-11-2.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[])
{

    printf("sizeof(float): %zu\n",sizeof(float));
    
    printf("sizeof(short): %zu\n",sizeof(short));
    
    short s = pow(2,15) - 1;
    printf("the max short: %d\n",s);
    
    unsigned short us = pow(2,16) - 1;
    printf("the max unsigned short: %d\n",us);
    us = 0;
    printf("the min unsigned short: %d\n",us);
    
    return 0;
}


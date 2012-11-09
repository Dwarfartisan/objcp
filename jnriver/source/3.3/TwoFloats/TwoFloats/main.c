//
//  main.c
//  TwoFloats
//
//  Created by nangua on 12-11-2.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    float f1 = 3.14;
    float f2 = 42.0;
    
    printf("%f,\n%f\n",f1,f2);
    
    double d1 = f1;
    double d2 = f2;
    
    printf("%f,\n%f",d1,d2);
    
    return 0;
}


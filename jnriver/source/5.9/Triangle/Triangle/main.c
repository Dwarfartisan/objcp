//
//  main.c
//  Triangle
//
//  Created by nangua on 12-11-2.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#include <stdio.h>

float remainingAngle(float angleA,float angleB)
{
    return 180 - angleA - angleB;
}

int main(int argc, const char * argv[])
{
    float angleA = 30.0;
    float angleB = 60.0;
    
    float angleC = remainingAngle(angleA,angleB);
    
    printf("%.2f",angleC);
}


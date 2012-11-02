//
//  main.c
//  practice
//
//  Created by nangua on 12-11-2.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[])
{
    //long seconds = time(NULL);
    long seconds = 4000000l;
    
    struct tm now;
    localtime_r(&seconds,&now);
    
    printf("The time is %d-%d-%d",now.tm_year+1900,now.tm_mon+1,now.tm_mday);
    
    return 0;
}


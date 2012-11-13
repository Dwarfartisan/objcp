//
//  main.c
//  practice
//
//  Created by nangua on 12-11-12.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#include <stdio.h>

int spaceCount(char *s){
    int i = 0;
    int n = 0;
    while (s[i] != '\0') {
        if(s[i] == 0x20){
            n++;
        }
        i++;
    }
    
    return n;
}

int main(int argc, const char * argv[])
{
    char *sentence = "He was not in the cab at the time.";
    printf("\"%s\" has %d spaces.\n",sentence,spaceCount(sentence));
    
    return 0;
}



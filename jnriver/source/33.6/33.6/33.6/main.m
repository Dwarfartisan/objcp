//
//  main.m
//  33.6
//
//  Created by nangua on 12-11-12.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        uint64 n = 0;
        
        for(int i = 1; i < 64; i++){
            n = n << 1;
            if(i%2 == 1){
                n++;
            }
        }

        // 0101010101010101010101010101010101010101010101010101010101010101
        NSLog(@"n:%lld",n);
    }
    return 0;
}


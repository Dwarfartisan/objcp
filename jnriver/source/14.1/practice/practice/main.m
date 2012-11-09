//
//  main.m
//  practice
//
//  Created by nangua on 12-11-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        NSHost *host = [NSHost currentHost];
        NSString *str = [host localizedName];
        
        NSLog(@"The hostname of this computer is:%@",str);
        
    }
    return 0;
}


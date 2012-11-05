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
        
        NSTimeZone *zone = [NSTimeZone systemTimeZone];
        NSLog(@"%@",zone);
        
        if([zone isDaylightSavingTime]){
            NSLog(@"Is daylight saving time");
        }else {
            NSLog(@"Is NOT daylight saving time");
        }
    }
    return 0;
}


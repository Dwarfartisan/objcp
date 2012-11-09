//
//  main.m
//  practice
//
//  Created by nangua on 12-11-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


double getResult1(NSDate *dateOfBirth,NSDate *now){
    double d = [now timeIntervalSinceDate:dateOfBirth];
    return d;
}

double getResult2(NSDate *dateOfBirth){
    double d = [dateOfBirth timeIntervalSinceNow];
    return (-1) * d;
}

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1986];
        [comps setMonth:8];
        [comps setDay:15];
        [comps setHour:15];
        [comps setMinute:40];
        [comps setSecond:00];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        NSLog(@"The date is %@",dateOfBirth);
        
        NSDate *now = [NSDate date];
        double d = [now timeIntervalSinceDate:dateOfBirth];
        NSLog(@"The result0 is %f",d);
        
        d = getResult1(dateOfBirth,now);
        NSLog(@"The result1 is %f",d);
        
        d = getResult2(dateOfBirth);
        NSLog(@"The result2 is %f",d);
        
        
        
    }
    return 0;
}

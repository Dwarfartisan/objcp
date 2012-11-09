//
//  main.m
//  BMITime
//
//  Created by nangua on 12-11-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Person *person = [[Person alloc] init];
        
//        [person setHeight:178];
//        [person setWeight:155];
        
        person.height = 1.78;
        person.weight = 75;

        float bmi = [person bodyMassIndex];
        
        NSLog(@"BMI:%.f",bmi);
        
    }
    return 0;
}


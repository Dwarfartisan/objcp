//
//  Person.m
//  BMITime
//
//  Created by nangua on 12-11-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize weight;
@synthesize height;


- (float)bodyMassIndex{
    int h = self.height;
    return self.weight / (h * h);
}

@end

//
//  Person.m
//  BMITime
//
//  Created by nangua on 12-11-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Person.h"

@implementation Person
/*
// setter
- (void)setHeight:(float)h{
    height = h;
}
- (void)setWeight:(int)w{
    weight = w;
}

// getter
- (float)height{
    return height;
}
- (int)weight{
    return weight;
}
*/

@synthesize height,weight;
//
- (float)bodyMassIndex{
    float h = self.height;
    return self.weight / (h * h);
}
@end

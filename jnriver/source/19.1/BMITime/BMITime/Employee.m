//
//  Employee.m
//  BMITime
//
//  Created by nangua on 12-11-6.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"

@implementation Employee

@synthesize employeeId;

- (float)bodyMassIndex{
    return [super bodyMassIndex] * 0.9;
}


- (void)addAssetsObj:(Asset *)a{
    if(!assets){
        assets = [[NSMutableArray alloc] init];
    }
    [assets addObject:a];
}

- (unsigned int)valueOfAssets{
    unsigned int sum = 0;
    for(Asset *a in assets){
        sum += a.resaleValue;
    }
    return sum;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %d: $%d in assets>",self.employeeId,self.valueOfAssets];
}

- (void)dealloc
{
    NSLog(@"deallocating %@",self);
}

@end

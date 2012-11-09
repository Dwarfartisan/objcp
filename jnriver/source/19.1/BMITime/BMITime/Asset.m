//
//  Asset.m
//  BMITime
//
//  Created by nangua on 12-11-6.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Asset.h"

@implementation Asset

@synthesize lable,resaleValue;

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: $%d >",[self lable],[self resaleValue]];
}

- (void)dealloc
{
    NSLog(@"deallocating %@",self);
}
@end

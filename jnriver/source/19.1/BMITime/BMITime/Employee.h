//
//  Employee.h
//  BMITime
//
//  Created by nangua on 12-11-6.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Person.h"
@class Asset;

@interface Employee : Person{
    int employeeId;
    NSMutableArray *assets;
}

@property int employeeId;
- (void)addAssetsObj:(Asset *)a;
- (unsigned int)valueOfAssets;

@end

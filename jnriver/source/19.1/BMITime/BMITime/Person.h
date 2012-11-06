//
//  Person.h
//  BMITime
//
//  Created by nangua on 12-11-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    float height;
    int weight;
}
@property int weight;
@property float height;

//
- (float)bodyMassIndex;
@end

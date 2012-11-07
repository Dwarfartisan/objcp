//
//  Logger.h
//  Callbacks
//
//  Created by nangua on 12-11-6.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject{
    NSMutableData *incomingData;
}
-(void)sayOuch:(NSTimer *)t;
@end

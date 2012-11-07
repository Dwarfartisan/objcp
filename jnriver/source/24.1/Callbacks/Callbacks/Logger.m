//
//  Logger.m
//  Callbacks
//
//  Created by nangua on 12-11-6.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Logger.h"

@implementation Logger

// 目标-动作对
-(void)sayOuch:(NSTimer *)t{
    NSLog(@"Ouch");
}

// 辅助对象
-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    NSLog(@"received %lu bytes",[data length]);
    
    if(!incomingData){
        incomingData = [[NSMutableData alloc] init];
    }
    [incomingData appendData:data];
    NSLog(@"tatol data: %lu bytes",[incomingData length]);
}

-(void)connectionDidFinishLoading:(NSConnection *)connection
{
    NSLog(@"Got it all!");
    NSLog(@"tatol data: %lu bytes",[incomingData length]);
    NSString *str = [[NSString alloc] initWithData:incomingData
                                          encoding:NSUTF16StringEncoding];
    NSLog(@"The whole string is %@",str);
    
    incomingData = nil;
}

-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSLog(@"failed : %@",[error localizedDescription]);
    incomingData = nil;
}

// 通告
- (void)zoneChange:(NSNotificationCenter *)note
{
    NSLog(@"The system time zone has changed!");
}

@end

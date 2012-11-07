//
//  main.m
//  Callbacks
//
//  Created by nangua on 12-11-6.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Logger.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Logger *logger = [[Logger alloc] init];
        
        // 通告
        [[NSNotificationCenter defaultCenter] addObserver:logger
                                                 selector:@selector(zoneChange:)
                                                     name:NSSystemTimeZoneDidChangeNotification object:nil];
        
        
        // 目标-动作对
        NSURL *url = [NSURL URLWithString:@"http://www.alejandrosoto.de/bioe.txt"];
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:req
                                                                     delegate:logger
                                                             startImmediately:YES];
        
        // 辅助对象
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                                                   target:logger
                                                                 selector:@selector(sayOuch:)
                                                                 userInfo:nil
                                                                  repeats:YES];
        
         [[NSRunLoop currentRunLoop] run];    }
    return 0;
}


//
//  main.m
//  ImageFetch
//
//  Created by nangua on 12-11-6.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSURL *url = [NSURL URLWithString:@"http://www.iteye.com/upload/logo/user/242845/a2af50a4-5a72-36d4-844b-6c9f2758aa9e.jpg"];
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        NSError *e = nil;
        NSData *data = [NSURLConnection sendSynchronousRequest:req
                                             returningResponse:NULL
                                                         error:&e];
        if(!data){
            NSLog(@"Failed:%@",[e localizedDescription]);
            return 1;
        }
        
        BOOL written = [data writeToFile:@"/tmp/1.jpg" options:0 error:&e];
        
        if(!written){
            NSLog(@"Failed:%@",[e localizedDescription]);
        }else {
            NSLog(@"Success!");
        }
    }
    return 0;
}


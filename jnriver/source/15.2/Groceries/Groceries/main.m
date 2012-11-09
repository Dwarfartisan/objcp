//
//  main.m
//  Groceries
//
//  Created by nangua on 12-11-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSMutableArray *dataList = [NSMutableArray array];
        
        NSString *book = @"book";
        NSString *pen = @"pen";
        NSString *table = @"table";
        
        [dataList addObject:book];
        [dataList addObject:pen];
        [dataList addObject:table];
        
        for(NSString *s in dataList){
            NSLog(@"Here is a data:%@",s);
        }
        
        NSLog(@"-----------------------------------------------------");
        
        [dataList removeObject:pen];
        
        for(NSString *s in dataList){
            NSLog(@"Here is a data:%@",s);
        }
    }
    return 0;
}


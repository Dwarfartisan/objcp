//
//  main.m
//  VowelMovement
//
//  Created by nangua on 12-11-12.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    // 把oldstr中的所有元音字母移除
    @autoreleasepool {
        NSArray *oldStrs = [NSArray arrayWithObjects:@"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi", nil];
        NSLog(@"old string: %@",oldStrs);
        NSMutableArray *newStrs = [NSMutableArray array];
        
        NSArray *vowels = [NSArray arrayWithObjects:@"a", @"e", @"i", @"o", @"u", nil];
        
        /*
        // 声明Block变量
        void (^devowelizer)(id,NSUInteger,BOOL *);
        
        devowelizer = ^(id str, NSUInteger i, BOOL *stop){
            NSMutableString *newStr = [NSMutableString stringWithString:str];
            for(NSString *s in vowels){
                NSRange fullRange = NSMakeRange(0, [newStr length]);
                [newStr replaceOccurrencesOfString:s
                                        withString:@""
                                           options:NSCaseInsensitiveSearch
                                             range:fullRange];
            }
            [newStrs addObject:newStr];
        };
        
        // 对数组中每个对象执行Block
        [oldStrs enumerateObjectsUsingBlock:devowelizer];
        NSLog(@"new string: %@",newStrs);
         */
        
        
        // 32.7 使用匿名Block对象
        [oldStrs enumerateObjectsUsingBlock:^(id str, NSUInteger i, BOOL *stop){
            NSMutableString *newStr = [NSMutableString stringWithString:str];
            for(NSString *s in vowels){
                NSRange fullRange = NSMakeRange(0, [newStr length]);
                [newStr replaceOccurrencesOfString:s
                                        withString:@""
                                           options:NSCaseInsensitiveSearch
                                             range:fullRange];
            }
            [newStrs addObject:newStr];
        }];
        NSLog(@"new string: %@",newStrs);
    }
    return 0;
}


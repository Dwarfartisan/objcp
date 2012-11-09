//
//  main.m
//  practice
//
//  Created by nangua on 12-11-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

// 获取文件中的词组array
NSArray *getWordsArray(NSString *path){
    NSString *wordStr = [NSString stringWithContentsOfFile:path 
                                                  encoding:NSUTF8StringEncoding 
                                                     error:NULL];
    NSArray *words = [wordStr componentsSeparatedByString:@"\n"];
    return words;
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        // 创建一个存放结果数据的array
        NSMutableArray *resultList = [NSMutableArray array];
        
        NSArray *nameList = getWordsArray(@"/usr/share/dict/propernames");
        NSArray *wordList = getWordsArray(@"/usr/share/dict/words");
        
        NSUInteger nameCnt = [nameList count];
        int i = 0;

        for (NSString *name in nameList) {
//            NSLog(@"%@",name);
            for (NSString *word in wordList) {
                if([name caseInsensitiveCompare:word] == NSOrderedSame){
                    [resultList addObject:name];
                    continue;
                }
            }
            i++;
            NSLog(@"Loading:%lu%%",i*100/nameCnt);
        }        
        
        NSLog(@"---------------------------------");
        NSLog(@"THE RESULT(%lu):",[resultList count]);
        for (NSString *word in resultList) {
            NSLog(@"%@",word);
        }
    }
    return 0;
}


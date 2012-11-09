//
//  main.m
//  Stocks
//
//  Created by nangua on 12-11-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"
#import "ForeignStockHolding.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        StockHolding *sh1 = [[StockHolding alloc] init];
        StockHolding *sh2 = [[StockHolding alloc] init];
        StockHolding *sh3 = [[StockHolding alloc] init];
        ForeignStockHolding *sh4 = [[ForeignStockHolding alloc] init];
        
        
        NSMutableArray *shList = [NSMutableArray array];
        
        sh1.currentSharePrice = 4.5;
        sh1.purchaseSharePrice = 2.3;
        sh1.numberOfShares = 40;
        [shList addObject:sh1];
        
        sh2.currentSharePrice = 10.56;
        sh2.purchaseSharePrice = 12.19;
        sh2.numberOfShares = 90;
        [shList addObject:sh2];
        
        sh3.currentSharePrice = 49.51;
        sh3.purchaseSharePrice = 45.1;
        sh3.numberOfShares = 210;
        [shList addObject:sh3];
        
        sh4.currentSharePrice = 4.5;
        sh4.purchaseSharePrice = 2.3;
        sh4.numberOfShares = 40;
        sh4.conversionRate = 0.94;
        [shList addObject:sh4];
        
        int i = 1;
        for(StockHolding *sh in shList){
            NSLog(@"sh%d.currentSharePrice is:%.2f",i,sh.currentSharePrice);
            NSLog(@"sh%d.purchaseSharePrice is:%.2f",i,sh.purchaseSharePrice);
            NSLog(@"sh%d.numberOfShares is:%d",i,sh.numberOfShares);
            i++;
        }
    
    }
    return 0;
}


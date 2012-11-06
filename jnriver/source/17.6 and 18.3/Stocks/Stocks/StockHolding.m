//
//  StockHolding.m
//  Stocks
//
//  Created by nangua on 12-11-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize purchaseSharePrice;
@synthesize currentSharePrice;
@synthesize numberOfShares;


- (float)costInDollars{
    return self.purchaseSharePrice * self.numberOfShares;
}
- (float)valueInDollars{
    return self.currentSharePrice * self.numberOfShares;
}

@end

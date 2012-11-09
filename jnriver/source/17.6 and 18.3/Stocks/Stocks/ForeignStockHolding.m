//
//  ForeignStockHolding.m
//  Stocks
//
//  Created by nangua on 12-11-6.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding

@synthesize conversionRate;

- (float) purchaseSharePrice{
    return super.purchaseSharePrice * self.conversionRate;
}
- (float) currentSharePrice{
    return super.currentSharePrice * self.conversionRate;
}

- (float)costInDollars{
    return self.purchaseSharePrice * self.numberOfShares * self.conversionRate;
}
- (float)valueInDollars{
    return self.currentSharePrice * self.numberOfShares * self.conversionRate;
}

@end

//
//  ForeignStockHolding.h
//  Stocks
//
//  Created by nangua on 12-11-6.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "StockHolding.h"

@interface ForeignStockHolding : StockHolding{
    float conversionRate;
}

@property float conversionRate;

@end

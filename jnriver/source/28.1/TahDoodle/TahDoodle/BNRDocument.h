//
//  BNRDocument.h
//  TahDoodle
//
//  Created by nangua on 12-11-9.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BNRDocument : NSDocument <NSTableViewDataSource>
{
    NSMutableArray *todoItems;
    IBOutlet NSTableView *itemTableView;
}

- (IBAction)createNewItem:(id)sender;
- (IBAction)deleteItem:(id)sender;
@end

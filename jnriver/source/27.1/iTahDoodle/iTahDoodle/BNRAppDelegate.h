//
//  BNRAppDelegate.h
//  iTahDoodle
//
//  Created by nangua on 12-11-7.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

NSString *docPath(void);

@interface BNRAppDelegate : UIResponder <UIApplicationDelegate,UITableViewDataSource>
{
    UITableView *taskTable;
    UITextField *taskField;
    UIButton *insertBtn;
    
    NSMutableArray *tasks;
}

- (void) addTask:(id)sender;

@property (strong, nonatomic) UIWindow *window;

@end

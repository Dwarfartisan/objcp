//
//  BNRAppDelegate.m
//  iTahDoodle
//
//  Created by nangua on 12-11-7.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "BNRAppDelegate.h"

NSString *docPaht()
{
    NSArray *pathList = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return [[pathList objectAtIndex:0] stringByAppendingPathComponent:@"data.td"];
}

@implementation BNRAppDelegate

@synthesize window = _window;

#pragma mark;

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tasks count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *c = [taskTable dequeueReusableCellWithIdentifier:@"cell"];
    
    if(!c){
        c = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@""];
    }
    NSString *item = [tasks objectAtIndex:[indexPath row]];
    [[c textLabel] setText:item];
    
    return c;
}

// 添加task
- (void)addTask:(id)sender
{
    NSString *t = [taskField text];
    
    if([t isEqualToString:@""] || t == nil){
        [taskField resignFirstResponder];
        return;
    }
    
    [tasks addObject:t];
    [taskTable reloadData];
    [taskField setText:@""];
    [taskField resignFirstResponder];
}

// 删除task
- (void)removeTask:(id)sender
{
    NSString *t = [taskField text];
    
    if([t isEqualToString:@""] || t == nil){
        [taskField resignFirstResponder];
        return;
    }
    
    [tasks removeObject:@""];
    [taskTable reloadData];
}

// 初始化
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // 从文件读取已存task数据
    NSArray *plist = [NSArray arrayWithContentsOfFile:docPaht()];
    if(plist){
        tasks = [plist mutableCopy];
    }else {
        tasks = [[NSMutableArray alloc] init];
    }
    
    // 添加测试数据
    if([tasks count] == 0){
        [tasks addObject:@"Walk the dogs"];
        [tasks addObject:@"Feed the dogs"];
        [tasks addObject:@"Chop the dogs"];
    }
    
    // 创建并设置UIWindow实例
    CGRect windowFrame = [[UIScreen mainScreen] bounds];
    UIWindow *theWindow = [[UIWindow alloc] initWithFrame:windowFrame];
    [self setWindow:theWindow];
    
    // 设置三个UI对象的frame属性
    CGRect tableFrame = CGRectMake(0, 80, 320, 380);
    CGRect fieldFrame = CGRectMake(20, 40, 200, 31);
    CGRect buttonFrame = CGRectMake(228, 40, 72, 31);
    
    // 创建并设置UITableView对象
    taskTable = [[UITableView alloc] initWithFrame:tableFrame
                                             style:UITableViewStylePlain];
    [taskTable setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
    [taskTable setDataSource:self];
    
    // 创建并设置UITextField对象
    taskField =[[UITextField alloc] initWithFrame:fieldFrame];
    [taskField setBorderStyle:UITextBorderStyleRoundedRect];
    [taskField setPlaceholder:@"Type a task, tap Insert"];
    
    
    
    // 创建并设置UIBtn对象
    insertBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [insertBtn setFrame:buttonFrame];
    
    // btn回调
    [insertBtn addTarget:self action:@selector(addTask:) forControlEvents:UIControlEventTouchUpInside];
    [insertBtn setTitle:@"Insert" forState:UIControlStateNormal];
    
    // 将UI对象加入UIWindow
    [[self window] addSubview:taskTable];
    [[self window] addSubview:taskField];
    [[self window] addSubview:insertBtn];
    
    //self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

// 关闭保存
- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    
    [tasks writeToFile:docPaht() atomically:YES];
}
- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    
    [tasks writeToFile:docPaht() atomically:YES];
}

@end

//
//  BNRDocument.m
//  TahDoodle
//
//  Created by nangua on 12-11-9.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "BNRDocument.h"

@implementation BNRDocument

#pragma NSDocument的覆盖方法
- (NSString *)windowNibName
{
    return @"BNRDocument";
}

#pragma 动作方法
- (IBAction)createNewItem:(id)sender
{
    if(!todoItems){
        todoItems = [NSMutableArray array];
        [todoItems retain];
    }
    [todoItems addObject:[NSString localizedStringWithFormat:@"New Item %d",[todoItems count] + 1]];
    
//    NSLog(@"todoItems:\n%@",todoItems);

    // reloadData 刷新
    [itemTableView reloadData];
    
    [self updateChangeCount:NSChangeDone];
}

- (IBAction)deleteItem:(id)sender
{
    if(!todoItems || [todoItems count] == 0){
        return;
    }
    NSInteger i = [itemTableView selectedRow];

    if(i >= 0){
        [todoItems removeObjectAtIndex:i];
    }else {
        return;
    }
    // reloadData 刷新
    [itemTableView reloadData];
    
    if([todoItems count] == 0){// 无数据时不需保存
        [self updateChangeCount:NSChangeCleared];
    }else {
        [self updateChangeCount:NSChangeDone];
    }
}

#pragma 数据源方法
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return [todoItems count];
}
- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn 
            row:(NSInteger)row
{
    return [todoItems objectAtIndex:row];
}
- (void)tableView:(NSTableView *)tableView 
   setObjectValue:(id)object 
   forTableColumn:(NSTableColumn *)
  tableColumn row:(NSInteger)row
{
    [todoItems replaceObjectAtIndex:row withObject:object]; 
    
    [self updateChangeCount:NSChangeDone];
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError
{
    if(!todoItems){
        todoItems = [NSMutableArray array];
    }
    
    // 将todoItems 转化为NSData对象
    NSData *data = [NSPropertyListSerialization 
                    dataWithPropertyList:todoItems
                                  format:NSPropertyListBinaryFormat_v1_0 
                                 options:0 
                                   error:outError];
    return data;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError
{
    // 将NSData对象 转化回todoItems
    todoItems = [NSPropertyListSerialization
                 propertyListWithData:data
                              options:NSPropertyListBinaryFormat_v1_0
                               format:NULL 
                                error:outError];
    
    [todoItems retain];
//    NSLog(@"todoItems:\n%@",todoItems);
    return (todoItems != nil);
}

@end

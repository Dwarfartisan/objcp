//
//  main.m
//  BMITime
//
//  Created by nangua on 12-11-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        for(int i = 0; i < 10; i++){
            Employee *person = [[Employee alloc] init];
            person.weight = 90 + i;
            person.height = 1.8 - i/10;
            person.employeeId = i;
            
            [employees addObject:person];
        }
        
        
        for(int i = 0; i < 10; i++){
            Asset *asset = [[Asset alloc] init];
            
            NSString *lable = [NSString stringWithFormat:@"Laptop %d",i];
            asset.lable = lable;
            asset.resaleValue = i * 17;
            
            NSUInteger index = random() % [employees count];
            
            Employee *randomEmployee = [employees objectAtIndex:index];
            [randomEmployee addAssetsObj:asset];
        }
        NSLog(@"Employees: %@",employees);
        NSLog(@"------------------------------------");
        NSLog(@"Give up ownership of one employee");
        [employees removeObjectAtIndex:5];
        NSLog(@"------------------------------------");
        NSLog(@"Give up ownership of array");
        employees = nil;
    }
    return 0;
}


//
//  Person.h
//  Day-5
//
//  Created by Sungwoo Kang on 2017. 1. 20..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bank.h"

@interface Person : NSObject

@property NSString *name;
@property NSUInteger asset;


- (void)depositMoney:(NSUInteger)won toBank:(Bank *)bank;
- (void)checkAccountOfBank:(Bank *)bank;

@end

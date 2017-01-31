//
//  Person.h
//  Day-8
//
//  Created by Sungwoo Kang on 2017. 1. 31..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject


@property NSString *name;
@property NSUInteger age;
@property NSUInteger height;
@property NSString *birthDay;  // >> yyyy/MM/dd
@property NSString *job;
@property NSUInteger salary;
@property NSString *address;

- (instancetype)initWithName:(NSString *)name;
- (void)settingJob:(NSString *)newJob;
- (bool)isBirthDay;

@end

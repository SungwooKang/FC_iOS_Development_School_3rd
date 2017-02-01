//
//  CheckLeapYear.m
//  Day-9
//
//  Created by Sungwoo Kang on 2017. 2. 1..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "CheckLeapYear.h"

@implementation CheckLeapYear


- (BOOL)checkLeapYear:(NSUInteger)year
{
    if ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0) {
        return YES;
    }else{
        return NO;
    }

}

- (NSInteger)lastDayOfMonth:(NSInteger)month year:(NSInteger)year
{
    if ([self checkLeapYear:year] == YES) {
        return 29;
    }else{
        return 28;
    }

}

@end

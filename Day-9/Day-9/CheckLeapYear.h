//
//  CheckLeapYear.h
//  Day-9
//
//  Created by Sungwoo Kang on 2017. 2. 1..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CheckLeapYear : NSObject

- (BOOL)checkLeapYear:(NSUInteger)year;
- (NSInteger)lastDayOfMonth:(NSInteger)month year:(NSInteger)year;



@end

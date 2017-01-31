//
//  CalculateLastDayOfMonth.m
//  CalculateLastDayOfMonth
//
//  Created by Sungwoo Kang on 2017. 1. 31..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "CalculateLastDayOfMonth.h"

@implementation CalculateLastDayOfMonth


- (NSInteger)lastDayOfMonth:(NSInteger)month
{
    NSInteger returnValue = 0;
    switch (month) {
            
        case 1:
        case 3:
        case 5:
        case 7:
        case 8:
        case 10:
        case 12:
            NSLog(@"%lu월의 마지막 날은 31일 입니다.", month);
            returnValue = 31;
            break;
        case 4:
        case 6:
        case 9:
        case 11:
            NSLog(@"%lu월의 마지막 날은 30일 입니다.", month);
            returnValue = 30;
            break;
        case 2:
            NSLog(@"%lu월의 마지막 날은 28일 입니다.", month);
            returnValue = 28;
            break;
    
            
        default:
            returnValue = 0;
            break;
    }
    return returnValue;

}

@end

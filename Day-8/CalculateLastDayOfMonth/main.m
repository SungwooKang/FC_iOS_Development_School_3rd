//
//  main.m
//  CalculateLastDayOfMonth
//
//  Created by Sungwoo Kang on 2017. 1. 31..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CalculateLastDayOfMonth.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
 
        CalculateLastDayOfMonth *cal = [[CalculateLastDayOfMonth alloc] init];
        
        [cal lastDayOfMonth:1];
        [cal lastDayOfMonth:2];
        [cal lastDayOfMonth:3];
        [cal lastDayOfMonth:4];
        [cal lastDayOfMonth:5];
        [cal lastDayOfMonth:6];
        [cal lastDayOfMonth:7];
        [cal lastDayOfMonth:8];
        [cal lastDayOfMonth:9];
        [cal lastDayOfMonth:10];
        [cal lastDayOfMonth:11];
        [cal lastDayOfMonth:12];

        
        
    }
    return 0;
}

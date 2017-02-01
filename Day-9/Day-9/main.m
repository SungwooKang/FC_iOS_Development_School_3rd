//
//  main.m
//  Day-9
//
//  Created by Sungwoo Kang on 2017. 2. 1..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculate.h"
#import "CheckLeapYear.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Calculate *cal1 = [[Calculate alloc] init];
        NSInteger testNumber1 = -145;
        NSLog(@"%ld의 절대값은 %lu입니다.", testNumber1, [cal1 absoluteNum:testNumber1]);
        
        CGFloat testNumber4 = 3.4352;
        NSLog(@"%.3f의 소수점 3째 자리 반올림 수는 %.2f입니다.", testNumber4, [cal1 roundNum:testNumber4]);
        
        NSUInteger testNumber2 = 3;
        NSUInteger testNumber3 = 7;
        NSLog(@"%lu와 %lu의 차이는 %ld입니다.", testNumber2, testNumber3, [cal1 calcuOP:@"-" firstNum:testNumber2 secondNum:testNumber3]);
        
        
        
        CheckLeapYear *c1 = [[CheckLeapYear alloc] init];
        NSUInteger testYear = 2000;
        NSUInteger testMonth = 2;
        if ([c1 checkLeapYear:testYear] == YES) {
            NSLog(@"%lu년은 윤년입니다.", testYear);
        }else{
            NSLog(@"%lu년은 윤년이 아닙니다.", testYear);
        }
        NSLog(@"%lu년의 %lu월의 마지막 일은 %lu일입니다.", testYear, testMonth, [c1 lastDayOfMonth:testMonth year:testYear]);

        
    
    }
    return 0;
}

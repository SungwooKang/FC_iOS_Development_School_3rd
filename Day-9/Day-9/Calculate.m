//
//  Calculate.m
//  Day-9
//
//  Created by Sungwoo Kang on 2017. 2. 1..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "Calculate.h"

@implementation Calculate

- (NSUInteger)absoluteNum:(NSInteger)num
{
    
    if (num < 0) {
        return num * (-1);
    }else
    {
        return num;
    }
    return 0;
}

- (CGFloat)roundNum:(CGFloat)number
{
    return number + 0.005;
}

- (NSInteger)calcuOP:(NSString *)op firstNum:(NSUInteger)num1 secondNum:(NSUInteger)num2
{
    if ([op isEqualToString:@"+"]) {
        return num1 + num2;
    }else if ([op isEqualToString:@"-"]){
        if (num1 < num2) {
            //swap 개념으로도 할 수 있음
            NSInteger temp = num1;
            num1 = num2;
            num2 = temp;
        }
        return num1 - num2;        
    }
    return 0;
}





@end

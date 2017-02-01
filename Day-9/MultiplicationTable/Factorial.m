//
//  Factorial.m
//  MultiplicationTable
//
//  Created by Sungwoo Kang on 2017. 2. 1..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "Factorial.h"

@implementation Factorial

+ (void)factorialNum:(NSUInteger)num
{
    NSUInteger result = 1;
    for (NSUInteger i = 1; i < num + 1; i++) {
        result = result * i;
    }
    NSLog(@"%lu", result);

}


@end

//
//  MultiplicationTable.m
//  MultiplicationTable
//
//  Created by Sungwoo Kang on 2017. 2. 1..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "MultiplicationTable.h"

@implementation MultiplicationTable

+ (void)googoodan:(NSInteger)dan
{
    NSInteger count = 1;
    while (count < 10) {
        NSLog(@"%lu X %lu = %lu", dan, count, dan * count);
        count++;
    }
}

+ (void)printAllGoogoodan
{
    for (NSUInteger dan = 1; dan < 10; dan += 1) {
        for (NSUInteger i = 1; i < 10; i += 1) {
            NSLog(@"%lu X %lu = %lu", dan, i, dan * i);
        }
    }
}


@end

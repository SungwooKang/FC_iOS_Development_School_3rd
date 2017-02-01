//
//  FindMultipleNum.m
//  MultiplicationTable
//
//  Created by Sungwoo Kang on 2017. 2. 1..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "FindMultipleNum.h"

@implementation FindMultipleNum

+ (void)findMultipleNum:(NSUInteger)num1 maxRange:(NSUInteger)range
{
    for (NSUInteger i = num1; i < range + 1; i++) {
        if (i % num1 == 0) {
            NSArray *temp = NSArray ;
            [temp arrayByAddingObject:@"d"];
            NSLog(temp);
        }
    }

    
    
}


@end

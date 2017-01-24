//
//  GradeCalculate.m
//  GradeCalculate
//
//  Created by Sungwoo Kang on 2017. 1. 24..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "GradeCalculate.h"

@implementation GradeCalculate


- (NSString *)gradeOfScore:(NSInteger)score
{
    if (score >= 95) {
        return @"A+";
    }else if (score >= 90) {
        return @"A";
    }else if (score >= 85) {
        return @"B+";
    }else if (score >= 80) {
        return @"B";
    }else if (score >= 75) {
        return @"C+";
    }else if (score >= 70) {
        return @"C";
    }else if (score >= 65) {
        return @"D";
    }else {
        return @"F";
    }
}


- (CGFloat)pointOfGrade:(NSString *)grade
{
    if ([grade isEqualToString:@"A+"]) {
        return 4.5;
    }else if ([grade isEqualToString:@"A"]) {
        return 4;
    }else if ([grade isEqualToString:@"B+"]) {
        return 3.5;
    }else if ([grade isEqualToString:@"B"]) {
        return 3;
    }else if ([grade isEqualToString:@"C+"]) {
        return 2.5;
    }else if ([grade isEqualToString:@"C"]) {
        return 2;
    }else if ([grade isEqualToString:@"D"]) {
        return 1.5;
    }else {
        return 0;
    }
    
}

@end

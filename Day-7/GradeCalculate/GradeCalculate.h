//
//  GradeCalculate.h
//  GradeCalculate
//
//  Created by Sungwoo Kang on 2017. 1. 24..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GradeCalculate : NSObject

- (NSString *)gradeOfScore:(NSInteger)score;
- (CGFloat)pointOfGrade:(NSString *)grade;


@end

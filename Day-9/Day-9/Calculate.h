//
//  Calculate.h
//  Day-9
//
//  Created by Sungwoo Kang on 2017. 2. 1..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculate : NSObject

- (NSUInteger)absoluteNum:(NSInteger)num;
- (CGFloat)roundNum:(CGFloat)number;
- (NSInteger)calcuOP:(NSString *)op firstNum:(NSUInteger)num1 secondNum:(NSUInteger)num2;


@end

//
//  Calculator.h
//  day-2
//
//  Created by Sungwoo Kang on 2017. 1. 17..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property id number;
@property id mark;



- (id)add;
- (id)subtract;
- (id)divide;
- (id)multiply;
- (id)root;
- (id)power;                                            //제곱


@end

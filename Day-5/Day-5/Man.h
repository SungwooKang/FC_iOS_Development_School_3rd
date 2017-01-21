//
//  Man.h
//  Day-5
//
//  Created by Sungwoo Kang on 2017. 1. 20..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "Person.h"

@interface Man : Person

//카드 만들기
- (void)makeCardFromBank:(Bank *)bank;

//입금 재정의
- (void)depositMoney:(NSUInteger)won toBank:(Bank *)bank;

@end

//
//  Woman.m
//  Day-5
//
//  Created by Sungwoo Kang on 2017. 1. 20..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "Woman.h"

@implementation Woman

//“~~가 ~~은행에서 통장정리를 하였습니다.”
- (void)refreshAccountTo:(Bank *)bank
{
    NSLog(@"\n%@가 %@은행에서 통장정리를 합니다.", self.name, bank.name);
}



@end

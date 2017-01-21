//
//  Person.m
//  Day-5
//
//  Created by Sungwoo Kang on 2017. 1. 20..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "Person.h"

@implementation Person

//입금
//"self.name 가 (bank.name) 은행에 (금액) 를 입급하였습니다."
- (void)depositMoney:(NSUInteger)won toBank:(Bank *)bank;
{
    
    self.asset = self.asset + won;
    NSLog(@"\n%@가 %@은행에 %lu원을 입급하였습니다.", self.name, bank.name, won);
    
    
}

//조회
//self.name 가 (bank.name) 은행에서 자신의 계좌를 조회해 본 결과, 총 자산은 self.asset 원 입니다.
- (void)checkAccountOfBank:(Bank *)bank
{
    
    NSLog(@"\n%@가 %@은행에서 자신의 계좌를 조회해 본 결과, 총 자산은 %lu원 입니다.", self.name, bank.name, self.asset);
}



@end

//
//  Person.m
//  Day-8
//
//  Created by Sungwoo Kang on 2017. 1. 31..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "Person.h"

@implementation Person


- (instancetype)initWithName:(NSString *)name
{
    
    self = [super init];
    if (self)
    {
        self.name = name;
    }
    return self;
}


- (void)settingJob:(NSString *)newJob
{
    self.job = newJob;
}



- (bool)isBirthDay
{

    NSString *today = @"2017/01/31";
    NSArray *tempList = [today componentsSeparatedByString:@"/"];
    NSUInteger month = [[tempList objectAtIndex:1] integerValue]; // 배열에 저장되어 있는 1번째 값 string을 integer로 변경
    NSUInteger day = [[tempList objectAtIndex:2] integerValue];
    
    
    NSArray *myTempList = [self.birthDay componentsSeparatedByString:@"/"];
    NSUInteger myMonth = [[myTempList objectAtIndex:1] integerValue];
    NSUInteger myDay = [[myTempList objectAtIndex:2] integerValue];
    
    
    if (month == myMonth && day == myDay) {
        return YES;
    }else
    {
        return NO;
    }



}




@end

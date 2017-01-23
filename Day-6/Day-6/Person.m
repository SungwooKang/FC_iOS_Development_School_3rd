//
//  Person.m
//  Day-6
//
//  Created by Sungwoo Kang on 2017. 1. 23..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithSubjects {
    
    self = [super init];
    
    if (self) {
        self.personMath = [[Subject alloc] init];
        self.personKorean = [[Subject alloc] init];
        self.personEnglish = [[Subject alloc] init];
        self.personHistory = [[Subject alloc] init];
        self.personScience = [[Subject alloc] init];
    }
    return self;
}


@end

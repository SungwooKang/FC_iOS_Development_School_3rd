//
//  Developer.h
//  Day-8
//
//  Created by Sungwoo Kang on 2017. 1. 31..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "Person.h"

@interface Developer : Person

@property NSUInteger developmentCareerYear;
@property NSString *programmingLanguage;


- (instancetype)initWithJob;

- (bool)isCareer;
- (bool)isPossibleIosDevelopment;

@end

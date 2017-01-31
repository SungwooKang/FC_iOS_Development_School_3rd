//
//  Developer.m
//  Day-8
//
//  Created by Sungwoo Kang on 2017. 1. 31..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "Developer.h"

@implementation Developer


- (instancetype)initWithJob {
    
    self = [super self];
    if (self) {
        self.job = @"개발자";
    }
    return self;
}

- (bool)isCareer
{
    if (self.developmentCareerYear != 0) {
        return YES;
    }else{
        return NO;
    }
}

- (bool)isPossibleIosDevelopment
{
    if ([self.programmingLanguage isEqualToString:@"Objective-C"] || [self.programmingLanguage isEqualToString:@"Swift"]) {
        return YES;
    }else{
        return NO;
    }
    
    
    
}



@end

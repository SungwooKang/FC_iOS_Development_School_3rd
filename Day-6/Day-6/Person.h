//
//  Person.h
//  Day-6
//
//  Created by Sungwoo Kang on 2017. 1. 23..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Subject.h"

@interface Person : NSObject

@property NSString *name;
@property Subject *personMath;
@property Subject *personEnglish;
@property Subject *personScience;
@property Subject *personHistory;
@property Subject *personKorean;


- (instancetype)initWithSubjects;

@end

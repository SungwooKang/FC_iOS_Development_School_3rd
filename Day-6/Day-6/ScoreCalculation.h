//
//  ScoreCalculation.h
//  Day-6
//
//  Created by Sungwoo Kang on 2017. 1. 23..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;
@class Subject;

@interface ScoreCalculation : NSObject
@property NSUInteger sumScore;
@property NSUInteger averageScore;

- (void)sumOf:(Person *)sumPerson;
- (void)averageOf:(Person *)averagePerson;




@end

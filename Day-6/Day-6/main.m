//
//  main.m
//  Day-6
//
//  Created by Sungwoo Kang on 2017. 1. 23..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Math.h"
#import "Subject.h"
#import "English.h"
#import "Science.h"
#import "ScoreCalculation.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *p1 = [[Person alloc] initWithSubjects];
        p1.name = @"성우";
        p1.personScience.name = @"과학";
        p1.personScience.score = 100;
        p1.personMath.name = @"수학";
        p1.personMath.score = 85;
        p1.personEnglish.name = @"영어";
        p1.personEnglish.score = 90;
        p1.personKorean.name = @"국어";
        p1.personKorean.score = 40;
        p1.personHistory.name = @"역사";
        p1.personHistory.score = 55;
        
        
        Person *p2 = [[Person alloc] initWithSubjects];
        p2.name = @"Mike";
        p2.personScience.name = @"과학";
        p2.personScience.score = 40;
        p2.personMath.name = @"수학";
        p2.personMath.score = 55;
        p2.personEnglish.name = @"영어";
        p2.personEnglish.score = 100;
        p2.personKorean.name = @"국어";
        p2.personKorean.score = 90;
        p2.personHistory.name = @"역사";
        p2.personHistory.score = 45;
        
        
        ScoreCalculation *cal = [[ScoreCalculation alloc] init];
        
        [cal sumOf:p1];
        [cal averageOf:p1];
        [cal sumOf:p2];
        [cal averageOf:p2];
        
        
        
    }
    return 0;
}

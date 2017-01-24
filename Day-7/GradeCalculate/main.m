//
//  main.m
//  GradeCalculate
//
//  Created by Sungwoo Kang on 2017. 1. 24..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GradeCalculate.h"
#import "Person.h"
#import "Subject.h"

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
        
        
        GradeCalculate *g1 = [[GradeCalculate alloc] init];
        NSInteger score = p1.personMath.score;
        NSString *g1Score = [g1 gradeOfScore:score];
        NSLog(@"%@의 %@ 학점은 %@ 입니다. 이 학점을 Point로 바꾸면 %.1lf 입니다.", p1.name, p1.personMath.name, g1Score, [g1 pointOfGrade:g1Score]);
        
        NSInteger score2 = p1.personScience.score;
        NSString *g2Score = [g1 gradeOfScore:score2];
        NSLog(@"%@의 %@ 학점은 %@ 입니다. 이 학점을 Point로 바꾸면 %.1lf 입니다.", p1.name, p1.personScience.name, g2Score, [g1 pointOfGrade:g2Score]);

        NSInteger score3 = p2.personEnglish.score;
        NSString *g3Score = [g1 gradeOfScore:score3];
        NSLog(@"%@의 %@ 학점은 %@ 입니다. 이 학점을 Point로 바꾸면 %.1lf 입니다.", p2.name, p2.personEnglish.name, g3Score, [g1 pointOfGrade:g3Score]);
        
        NSInteger score4 = p2.personHistory.score;
        NSString *g4Score = [g1 gradeOfScore:score4];
        NSLog(@"%@의 %@ 학점은 %@ 입니다. 이 학점을 Point로 바꾸면 %.1lf 입니다.", p2.name, p2.personHistory.name, g4Score, [g1 pointOfGrade:g4Score]);
    
    
    }
    return 0;
}

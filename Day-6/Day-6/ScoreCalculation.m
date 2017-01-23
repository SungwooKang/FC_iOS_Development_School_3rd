//
//  ScoreCalculation.m
//  Day-6
//
//  Created by Sungwoo Kang on 2017. 1. 23..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "ScoreCalculation.h"
#import "Subject.h"
#import "Person.h"


@implementation ScoreCalculation

- (void)sumOf:(Person *)sumPerson
{
    _sumScore = (sumPerson.personHistory.score + sumPerson.personKorean.score + sumPerson.personEnglish.score + sumPerson.personMath.score + sumPerson.personScience.score);
    NSLog(@"%@의 과목의 총합 점수는 %lu 점입니다.", sumPerson.name, _sumScore);
    
    
}

- (void)averageOf:(Person *)averagePerson
{
    
    _averageScore = ((averagePerson.personHistory.score + averagePerson.personKorean.score + averagePerson.personEnglish.score + averagePerson.personMath.score + averagePerson.personScience.score) / 5);
    NSLog(@"%@의 과목의 평균 점수는 %lu 점입니다.", averagePerson.name, _averageScore);

}





@end

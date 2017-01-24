//
//  IfStatementTest.m
//  Day-7
//
//  Created by Sungwoo Kang on 2017. 1. 24..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "IfStatementTest.h"

@implementation IfStatementTest

//짝수인지 확인하는 메소드

+ (BOOL)iSEvenNumber:(NSInteger)number
{
    BOOL returnValue;
    
    if (number % 2 == 0) {
        returnValue = YES;
    }else{
        returnValue = NO;
        
    }
    return returnValue;
    

}




@end

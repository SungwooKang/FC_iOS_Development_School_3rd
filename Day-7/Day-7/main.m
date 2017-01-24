//
//  main.m
//  Day-7
//
//  Created by Sungwoo Kang on 2017. 1. 24..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IfStatementTest.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSInteger checkNumber = random();
        
        if ([IfStatementTest iSEvenNumber:checkNumber] == YES) {
            NSLog(@"%lu은(는) 짝수입니다.", checkNumber);
        }else{
            NSLog(@"%lu은(는) 홀수입니다.", checkNumber);
        }
        
        
        
        
    }
    return 0;
}

//
//  main.m
//  Day-5
//
//  Created by Sungwoo Kang on 2017. 1. 20..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Man.h"
#import "Woman.h"
#import "Bank.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Man *man = [Man new];
        man.name = @"비";
        man.asset = 1500000;
        
        Woman *woman = [Woman new];
        woman.name = @"김태희";
        woman.asset = 10000;
        
        Bank *shinhanBank = [Bank new];
        shinhanBank.name = @"신한";
        shinhanBank.location = @"서울특별시 논현 1동 621-1번지";
        
        
        [man makeCardFromBank:shinhanBank];
        [woman refreshAccountTo:shinhanBank];
        [man depositMoney:700 toBank:shinhanBank];
        [woman depositMoney:500 toBank:shinhanBank];
        [man checkAccountOfBank:shinhanBank];
        [woman checkAccountOfBank:shinhanBank];
        [shinhanBank changeLocationTo:@"인천광역시 송도동 214-1번지"];
        [shinhanBank transferTo:woman transferFrom:man howMuchMoney:1000];
        [woman checkAccountOfBank:shinhanBank];
        

    
    
    
    
    }
    return 0;
}

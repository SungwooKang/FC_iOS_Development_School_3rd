//
//  main.m
//  MultiplicationTable
//
//  Created by Sungwoo Kang on 2017. 2. 1..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MultiplicationTable.h"
#import "Factorial.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        [MultiplicationTable googoodan:4];
        [Factorial factorialNum:5];
        [MultiplicationTable printAllGoogoodan];

        
        
    }
    return 0;
}

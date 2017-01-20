//
//  main.m
//  Day-4
//
//  Created by Sungwoo Kang on 2017. 1. 19..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Elf.h"
#import "Human.h"


int main(int argc, const char * argv[]) {
    Elf *e1 = [[Elf alloc] init];
    Human *h1 = [[Human alloc] init];
    GameCharacter *g1 =[[GameCharacter alloc] init];
    
    
    
    
    
   
    [e1 attackTo:h1];
    [e1 jumpTo:h1];
    [h1 jumpTo:e1];
    [e1 jump];
    [g1 jump];
    
    
    return 0;
}

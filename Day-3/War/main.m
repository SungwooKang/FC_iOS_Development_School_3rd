//
//  main.m
//  War
//
//  Created by Sungwoo Kang on 2017. 1. 18..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Elf.h"
#import "Human.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Elf *e1 = [Elf new];
        
        e1.name = @"요다";
        e1.age = 100;
        e1.hp = 100;
        e1.mp = 200;
        e1.atk = 26;
        e1.def = 15;
        
        
        Human *h1 = [Human new];
        
        h1.name = @"성우";
        h1.age = 28;
        h1.hp = 150;
        h1.mp = 100;
        h1.atk = 30;
        h1.def = 15;
        
        
        [e1 attackTo:h1];
        [e1 attackTo:h1];
        [h1 attackTo:e1];
        [h1 attackTo:e1];
        [h1 attackTo:e1];
        [h1 attackTo:e1];




        
        
        
    }
    return 0;
}

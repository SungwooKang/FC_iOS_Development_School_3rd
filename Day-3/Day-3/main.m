//
//  main.m
//  day-3
//
//  Created by Sungwoo Kang on 2017. 1. 18..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Warrior.h"
#import "Wizard.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        Warrior *barbarian = [[Warrior alloc] init];
        barbarian.health = 1000;
        barbarian.mana = 100;
        barbarian.physicalPower = 400;
        barbarian.magicalPower = 100;
        
        Wizard *harrypotter = [Wizard new];
        harrypotter.health = 1000;
        harrypotter.mana = 500;
        harrypotter.magicalPower = 400;
        harrypotter.physicalPower = 100;
        
        
        
        
        [barbarian physicalAttackTo:harrypotter];
        [harrypotter magicalAttackTo:barbarian];
        [harrypotter magicalAttackTo:barbarian];
        
        

    
    }
    return 0;
}

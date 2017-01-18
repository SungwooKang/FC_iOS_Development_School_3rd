//
//  Warrior.m
//  day-3
//
//  Created by Sungwoo Kang on 2017. 1. 18..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "Warrior.h"
#import "Wizard.h"

@implementation Warrior

- (id)physicalAttackTo:(Wizard *)someCharacter {
    
    NSUInteger resultHealth = someCharacter.health - self.physicalPower;
    NSLog(@"%lu", resultHealth);
    
    return nil;
}

@end

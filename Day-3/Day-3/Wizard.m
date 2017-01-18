//
//  Wizard.m
//  day-3
//
//  Created by Sungwoo Kang on 2017. 1. 18..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "Wizard.h"
#import "Warrior.h"

@implementation Wizard

- (id)magicalAttackTo:(Warrior *)someCharacter {
    
    NSUInteger resultHealth2 = someCharacter.health - self.magicalPower;
    NSLog(@"%lu", resultHealth2);

    
    return nil;
}




@end

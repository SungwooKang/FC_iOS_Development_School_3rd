//
//  Wizard.h
//  day-3
//
//  Created by Sungwoo Kang on 2017. 1. 18..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Warrior;

@interface Wizard : NSObject

@property NSUInteger health;
@property NSUInteger mana;
@property NSUInteger physicalPower;
@property NSUInteger magicalPower;



- (id)magicalAttackTo:(Warrior *)someCharacter;


@end

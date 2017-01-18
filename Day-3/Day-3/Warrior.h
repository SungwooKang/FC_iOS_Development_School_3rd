//
//  Warrior.h
//  day-3
//
//  Created by Sungwoo Kang on 2017. 1. 18..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Wizard;

@interface Warrior : NSObject

@property NSUInteger health;
@property NSUInteger mana;
@property NSUInteger physicalPower;
@property NSUInteger magicalPower;


- (id)physicalAttackTo:(Wizard *)someCharacter;

@end

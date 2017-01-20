//
//  Elf.h
//  Day-4
//
//  Created by Sungwoo Kang on 2017. 1. 20..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameCharacter.h"
@class GameCharacter;
@class Human;

@interface Elf : GameCharacter


- (void)attackTo:(Human *)human;



@end

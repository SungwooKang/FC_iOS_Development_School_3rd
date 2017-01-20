//
//  Human.h
//  Day-4
//
//  Created by Sungwoo Kang on 2017. 1. 20..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameCharacter.h"
@class Elf;
@class GameCharacter;


@interface Human : GameCharacter


- (void)attackTo:(Elf *)elf;


@end

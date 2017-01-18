//
//  Elf.m
//  War
//
//  Created by Sungwoo Kang on 2017. 1. 18..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "Elf.h"
#import "Human.h"
@implementation Elf

- (id)attackTo:(Human *)human
{
    
    NSInteger elfDamage = self.atk - human.def;
    NSInteger humanAfterHP = human.hp - elfDamage;
    self.mp = self.mp - 20;
    human.hp = humanAfterHP;
    NSLog(@"\n%@의 HP는 %lu이(가) 되었고, %@의 MP는 %lu이(가) 남았습니다.", human.name, human.hp, self.name, self.mp);
    
    return nil;
  
  
    
}


@end

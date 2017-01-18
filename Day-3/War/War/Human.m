//
//  Human.m
//  War
//
//  Created by Sungwoo Kang on 2017. 1. 18..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "Human.h"
#import "Elf.h"
@implementation Human

- (id)attackTo:(Elf *)elf
{
    
    NSInteger humanDamage = self.atk - elf.def;
    NSInteger elfAfterHP = elf.hp - humanDamage;
    elf.hp = elfAfterHP;
    self.mp = self.mp - 20;
    NSLog(@"\n%@의 HP는 %lu이(가) 되었고, %@의 MP는 %lu이(가) 남았습니다.", elf.name, elf.hp, self.name, self.mp);
    
    return nil;
    
    
    
    
    
    
}


@end

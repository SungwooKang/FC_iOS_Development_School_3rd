//
//  GameCharacter.m
//  Day-4
//
//  Created by Sungwoo Kang on 2017. 1. 19..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "GameCharacter.h"



@interface GameCharacter ()

@property NSString *name;
@property NSInteger level;
@property NSInteger mp;
@property NSInteger attackPower;

@end



@implementation GameCharacter


- (void)jumpTo:(GameCharacter *)character;{
    NSLog(@"%@에게로 점프 합니다.", character.name);
}

- (void)jump{
    NSLog(@"점프 합니다.");
}





@end

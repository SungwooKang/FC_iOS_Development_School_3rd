//
//  GameCharacter.h
//  Day-4
//
//  Created by Sungwoo Kang on 2017. 1. 19..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameCharacter : NSObject

@property (readwrite) NSInteger hp;

- (void)jumpTo:(GameCharacter *)character;
- (void)jump;

@end

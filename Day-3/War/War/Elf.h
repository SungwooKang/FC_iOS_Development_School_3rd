//
//  Elf.h
//  War
//
//  Created by Sungwoo Kang on 2017. 1. 18..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Human;
@interface Elf : NSObject

@property NSString *name;
@property NSInteger age;
@property NSInteger hp;
@property NSInteger mp;
@property NSInteger def;
@property NSInteger atk;


- (id)attackTo:(Human *)human;


@end

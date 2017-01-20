//
//  Human.h
//  War
//
//  Created by Sungwoo Kang on 2017. 1. 18..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Elf;

@interface Human : NSObject


@property NSString *name;
@property NSInteger age;
@property NSInteger hp;
@property NSInteger mp;
@property NSInteger def;
@property NSInteger atk;


- (id)attackTo:(Elf *)elf;
- (void)methodWithNum:(NSInteger)num1 param1:(NSInteger)param1;

@end

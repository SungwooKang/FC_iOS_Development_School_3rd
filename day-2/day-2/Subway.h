//
//  Subway.h
//  day-2
//
//  Created by Sungwoo Kang on 2017. 1. 17..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Subway : NSObject

@property id beefAmount;
@property id cheeseAmount;
@property id porkAmount;
@property id vegetableAmount;
@property id sourceSort;
@property id waitingTime;
@property id beverageSort;

- (id)isTakeOut;
- (id)pay;
- (id)cleaning;
- (id)heat;


@end

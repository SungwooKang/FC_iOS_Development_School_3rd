//
//  Person.h
//  day-2
//
//  Created by Sungwoo Kang on 2017. 1. 17..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property id name;
@property id phoneNumber;
@property id gender;
@property id hairLength;


- (id)talk;
- (id)eat;
- (id)run;



@end

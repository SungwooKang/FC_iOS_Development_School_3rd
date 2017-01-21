//
//  Bank.h
//  Day-5
//
//  Created by Sungwoo Kang on 2017. 1. 20..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;


@interface Bank : NSObject

@property NSString *name;
@property NSString *location;


- (void)changeLocationTo:(NSString *)newLocation;
- (void)transferTo:(Person *)toPerson transferFrom:(Person *)fromPerson howMuchMoney:(NSInteger)money;


@end

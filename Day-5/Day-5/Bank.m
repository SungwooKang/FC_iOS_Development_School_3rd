//
//  Bank.m
//  Day-5
//
//  Created by Sungwoo Kang on 2017. 1. 20..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "Bank.h"
#import "Person.h"

@implementation Bank


//주소변경 메소드
// "~~은행이 ~~에서 ~~로 주소를 변경하였습니다."
- (void)changeLocationTo:(NSString *)newLocation
{
    NSString *oldLocation = self.location;
    self.location = newLocation;
    NSLog(@"\n%@은행이 %@에서 %@로 주소를 변경하였습니다.", self.name, oldLocation, self.location);
}


- (void)transferTo:(Person *)toPerson transferFrom:(Person *)fromPerson howMuchMoney:(NSInteger)money;
{
    
    toPerson.asset = toPerson.asset + money;
    fromPerson.asset = fromPerson.asset - money;
    NSLog(@"\n%@가 %@에게 %lu원을 이체하였습니다.", fromPerson.name, toPerson.name, money);
    
}




@end

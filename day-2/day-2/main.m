//
//  main.m
//  day-2
//
//  Created by Sungwoo Kang on 2017. 1. 17..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Warrior.h"
#import "Person.h"
#import "Wizard.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        Warrior *barbarian = [[Warrior alloc] init];
        barbarian.health = @100;
        
        Warrior *monster = [Warrior new];
        monster.mana = @150;
        
        Person *me = [[Person alloc] init];
        me.name = @"sungwoo";
        me.gender = @"male";
        me.phoneNumber = @"010-9889-3490";
        
        Person *you = [Person new];
        you.name = @"youngmin";
        
        Wizard *harrypotter = [Wizard new];
        harrypotter.magicalPower = @1000;
        
        Wizard *weasley = [Wizard new];
        weasley.magicalPower = @80;
        
        
        
        NSLog(@"Hi, my name is %@, and I'm %@.\nMy phonenumber is %@.", me.name, me.gender, me.phoneNumber);
        NSLog(@"Aren't you %@? Nice to meet you.", you.name);
    }
    return 0;
}

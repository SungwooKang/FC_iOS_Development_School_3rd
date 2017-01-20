//
//  main.m
//  Person
//
//  Created by Sungwoo Kang on 2017. 1. 19..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UniversityStudent.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool
    

    
    {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        Person *man = [[Person alloc] init];
        
        
        Student *you = [[Student alloc] init];
        you.name = @"Jack";
        you.age = 12;
        
        Student *math = [[Student alloc] init];
        math.item = @"수학";
        
        UniversityStudent *incheon = [[UniversityStudent alloc] init];
        UniversityStudent *sungwoo = [[UniversityStudent alloc] init];
        sungwoo.name = @"성우";
        incheon.where = @"인천";
        
        
        
        [man setWeight:88 setHeight:187];
        
        
        [sungwoo studyTo];
        NSLog(@"학생 %@은 %@을 공부한다", sungwoo.name, math.item);
        
        [sungwoo studyTo];
        
        
        
        
        
    }
    return 0;
}





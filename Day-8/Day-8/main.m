//
//  main.m
//  Day-8
//
//  Created by Sungwoo Kang on 2017. 1. 31..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Developer.h"
#import "Designer.h"
#import "ToolBox.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Person *p1 = [[Person alloc] init];
        p1.name = @"성우";
        p1.birthDay = @"2017/01/28";
        p1.job = @"개발자";
        
        Person *p2 = [[Person alloc] init];
        p2.name = @"앙드레김";
        p2.job = @"디자이너";

        
        if ([p1  isBirthDay] == YES) {
            NSLog(@"오늘은 %@의 생일이 맞습니다.", p1.name);
        }else
        {
            NSLog(@"오늘은 %@의 생일이 아닙니다.", p1.name);
        }
        
        Developer *d1 = [[Developer alloc] init];
        d1.name = @"귀도반로섬";
        d1.developmentCareerYear = 20;
        d1.programmingLanguage = @"Python";
        
        
        if ([d1 isCareer] == YES) {
            NSLog(@"%@의 개발 경력은 %lu년이며, 경력자입니다.", d1.name, d1.developmentCareerYear);
        }else
        {
            NSLog(@"%@는 개발 경력이 없습니다.", d1.name);
        }
        
        if ([d1 isPossibleIosDevelopment] == YES) {
            NSLog(@"%@의 주언어는 %@ 이며, iOS 개발이 가능합니다.", d1.name, d1.programmingLanguage);
        }else
        {
            NSLog(@"%@의 주언어는 %@ 이라서, iOS 개발은 힘듭니다.", d1.name, d1.programmingLanguage);
        }
       
        
        ToolBox *t1 = [[ToolBox alloc] init];
        
        
        if ([t1 checkDevloper:p1] == YES) {
            NSLog(@"%@의 직업은 개발자가 맞습니다.", p1.name);
        }else
        {
            NSLog(@"%@의 직업은 개발자가 아닙니다.", p1.name);
        }
        
        if ([t1 checkDesigner:p2] == YES) {
            NSLog(@"%@의 직업은 디자이너가 맞습니다.", p2.name);
        }else
        {
            NSLog(@"%@의 직업은 개발자가 아닙니다.", p2.name);
        }
    


    
    
    }
    return 0;
}

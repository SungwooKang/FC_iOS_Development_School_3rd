//
//  ToolBox.m
//  Day-8
//
//  Created by Sungwoo Kang on 2017. 1. 31..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "ToolBox.h"

@implementation ToolBox

- (bool)checkDevloper:(Person *)cdp1
{
    if ([cdp1.job isEqualToString:@"개발자"]) {
        return YES;
    }else{
        return NO;
    }
}
- (bool)checkDesigner:(Person *)cdn1
{
    if ([cdn1.job isEqualToString:@"디자이너"]) {
        return YES;
        
    }else{
        return NO;
    }
}




@end

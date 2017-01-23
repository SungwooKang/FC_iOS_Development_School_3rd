//
//  DimensionalShapes.m
//  Shapes
//
//  Created by Sungwoo Kang on 2017. 1. 23..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "DimensionalShapes.h"
#import "Shapes.h"

@implementation DimensionalShapes
//면적
- (void)calculateArea:(Shapes *)area
{
    
//    CGFloat areaValue;
    if([area.name isEqualToString:@"Squre"]) {
        _resultArea = area.s * area.s;
    }else if([area.name isEqualToString: @"Rectangle"]) {
        _resultArea = area.l * area.w;
    }else if([area.name isEqualToString:@"Circle"]) {
        _resultArea = area.r * area.r * 3.14;
    }else if([area.name isEqualToString:@"Triangle"]) {
        _resultArea = area.b * area.h / 2;
    }else if([area.name isEqualToString:@"Trapezoid"]) {
        _resultArea = area.h * (area.a + area.b) / 2;
    }else{
        NSLog(@"면적을 구할 수 없습니다.");
    }
    
    NSLog(@"%@의 면적은 %lf입니다.", area.name, _resultArea);
}

//직사각형의 둘레
- (void)calculatePerimeter:(Shapes *)perimeter
{
    if([perimeter.name isEqualToString:@"Squre"]) {
        _resultPerimeter = 4 * perimeter.s;
    }else if([perimeter.name isEqualToString: @"Rectangle"]) {
        _resultPerimeter = 2 * perimeter.l + 2 * perimeter.w;
    }else{
        NSLog(@"둘레을 구할 수 없습니다.");
    }
    
    NSLog(@"%@의 둘레는 %lf입니다.", perimeter.name, _resultPerimeter);
    
}

//원의 둘레
- (void)calculateCircumference:(Shapes *)circumference
{
    if([circumference.name isEqualToString:@"Circle"]) {
        _resultCircumference = circumference.r * 2 * 3.14;
    }
    
    NSLog(@"%@의 둘레는 %lf입니다.", circumference.name, _resultCircumference);

    
    
    
}

//부피
- (void)calculateVolume:(Shapes *)volume
{
    
    if([volume.name isEqualToString:@"Cube"]) {
        _resultVolume = volume.s * volume.s * volume.s;
    }else if([volume.name isEqualToString: @"Rectangular Solid"]) {
        _resultVolume = volume.l * volume.w * volume.h;
    }else if([volume.name isEqualToString:@"Circular Cylinder"]) {
        _resultVolume = volume.h * volume.r * volume.r * 3.14;
    }else if([volume.name isEqualToString:@"Sphere"]) {
        _resultVolume = volume.r * volume.r * volume.r * 3.14 * 4 / 3;
    }else if([volume.name isEqualToString:@"Cone"]) {
        _resultVolume = volume.r * volume.r + volume.h * 3.14 / 3;
    }else{
        NSLog(@"부피를 구할 수 없습니다.");
    }
    
    NSLog(@"%@의 부피는 %lf입니다.", volume.name, _resultVolume);

    
}




@end

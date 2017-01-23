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
- (void)calculate:(Shapes *)calculateShapes
{
    
//    CGFloat areaValue;
    if([calculateShapes.name isEqualToString:@"Squre"]) {
        _resultArea = calculateShapes.s * calculateShapes.s;
        _resultPerimeter = 4 * calculateShapes.s;
        NSLog(@"%@의 면적은 %lf이며, 둘레는 %lf입니다.", calculateShapes.name, _resultArea, _resultPerimeter);

    }else if([calculateShapes.name isEqualToString: @"Rectangle"]) {
        _resultArea = calculateShapes.l * calculateShapes.w;
        _resultPerimeter = 2 * calculateShapes.l + 2 * calculateShapes.w;
        NSLog(@"%@의 면적은 %lf이며, 둘레는 %lf입니다.", calculateShapes.name, _resultArea, _resultPerimeter);

    }else if([calculateShapes.name isEqualToString:@"Circle"]) {
        _resultArea = calculateShapes.r * calculateShapes.r * 3.14;
        _resultCircumference = calculateShapes.r * 2 * 3.14;
        NSLog(@"%@의 면적은 %lf이며, 둘레는 %lf입니다.", calculateShapes.name, _resultArea, _resultCircumference);
        
    }else if([calculateShapes.name isEqualToString:@"Triangle"]) {
        _resultArea = calculateShapes.b * calculateShapes.h / 2;
        NSLog(@"%@의 면적은 %lf입니다.", calculateShapes.name, _resultArea);
    
    }else if([calculateShapes.name isEqualToString:@"Trapezoid"]) {
        _resultArea = calculateShapes.h * (calculateShapes.a + calculateShapes.b) / 2;
        NSLog(@"%@의 면적은 %lf입니다.", calculateShapes.name, _resultArea);
    
    }else if([calculateShapes.name isEqualToString:@"Cube"]) {
        _resultVolume = calculateShapes.s * calculateShapes.s * calculateShapes.s;
        NSLog(@"%@의 부피는 %lf입니다.", calculateShapes.name, _resultVolume);
        
    }else if([calculateShapes.name isEqualToString:@"Rectangular Solid"]) {
        _resultVolume = calculateShapes.l * calculateShapes.w * calculateShapes.h;
        NSLog(@"%@의 부피는 %lf입니다.", calculateShapes.name, _resultVolume);
        
    }else if([calculateShapes.name isEqualToString:@"Circular Cylinder"]) {
        _resultVolume = calculateShapes.h * calculateShapes.r * calculateShapes.r * 3.14;
        NSLog(@"%@의 부피는 %lf입니다.", calculateShapes.name, _resultVolume);
        
    }else if([calculateShapes.name isEqualToString:@"Sphere"]) {
        _resultVolume = calculateShapes.r * calculateShapes.r * calculateShapes.r * 3.14 * 4 / 3;
        NSLog(@"%@의 부피는 %lf입니다.", calculateShapes.name, _resultVolume);
        
    }else if([calculateShapes.name isEqualToString:@"Cone"]) {
        _resultVolume = calculateShapes.r * calculateShapes.r + calculateShapes.h * 3.14 / 3;
        NSLog(@"%@의 부피는 %lf입니다.", calculateShapes.name, _resultVolume);
        
    }else{
        NSLog(@"없는 도형입니다.");
    }
    
}

//직사각형의 둘레
//- (void)calculatePerimeter:(Shapes *)perimeter
//{
//    if([perimeter.name isEqualToString:@"Squre"]) {
//        _resultPerimeter = 4 * perimeter.s;
//    }else if([perimeter.name isEqualToString: @"Rectangle"]) {
//        _resultPerimeter = 2 * perimeter.l + 2 * perimeter.w;
//    }else{
//        NSLog(@"둘레을 구할 수 없습니다.");
//    }
//    
//    NSLog(@"%@의 둘레는 %lf입니다.", perimeter.name, _resultPerimeter);
//    
//}

//원의 둘레
//- (void)calculateCircumference:(Shapes *)circumference
//{
//    if([circumference.name isEqualToString:@"Circle"]) {
//        _resultCircumference = circumference.r * 2 * 3.14;
//    }
//    
//    NSLog(@"%@의 둘레는 %lf입니다.", circumference.name, _resultCircumference);
//
//    
//    
//    
//}

//부피
//- (void)calculateVolume:(Shapes *)volume
//{
//    
//    if([volume.name isEqualToString:@"Cube"]) {
//        _resultVolume = volume.s * volume.s * volume.s;
//    }else if([volume.name isEqualToString: @"Rectangular Solid"]) {
//        _resultVolume = volume.l * volume.w * volume.h;
//    }else if([volume.name isEqualToString:@"Circular Cylinder"]) {
//        _resultVolume = volume.h * volume.r * volume.r * 3.14;
//    }else if([volume.name isEqualToString:@"Sphere"]) {
//        _resultVolume = volume.r * volume.r * volume.r * 3.14 * 4 / 3;
//    }else if([volume.name isEqualToString:@"Cone"]) {
//        _resultVolume = volume.r * volume.r + volume.h * 3.14 / 3;
//    }else{
//        NSLog(@"부피를 구할 수 없습니다.");
//    }
//    
//    NSLog(@"%@의 부피는 %lf입니다.", volume.name, _resultVolume);
//
//    
//}




@end

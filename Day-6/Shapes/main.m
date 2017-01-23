//
//  main.m
//  Shapes
//
//  Created by Sungwoo Kang on 2017. 1. 23..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DimensionalShapes.h"
#import "Shapes.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        DimensionalShapes *cal = [[DimensionalShapes alloc] init];

        
        Shapes *s1 = [[Shapes alloc] init];
        s1.name = @"Squre";
        s1.s = 5;
        
        Shapes *s2 = [[Shapes alloc] init];
        s2.name = @"Rectangle";
        s2.l = 10;
        s2.w = 5;
        
        Shapes *s3 = [[Shapes alloc] init];
        s3.name = @"Circle";
        s3.r = 3;
        
        Shapes *s4 = [[Shapes alloc] init];
        s4.name = @"Triangle";
        s4.b = 4;
        s4.h = 7;
        
        Shapes *s5 = [[Shapes alloc] init];
        s5.name = @"Ttrapezoid";
        s5.a = 8;
        s5.b = 5;
        s5.h = 3;
        
        Shapes *s6 = [[Shapes alloc] init];
        s6.name = @"Cube";
        s6.s = 5;
        
        Shapes *s7 = [[Shapes alloc] init];
        s7.name = @"Rectangular Solid";
        s7.l = 7;
        s7.w = 3;
        s7.h = 2;
        
        Shapes *s8 = [[Shapes alloc] init];
        s8.name = @"Circular Cylinder";
        s8.r = 3;
        s8.h = 7;
        
        Shapes *s9 = [[Shapes alloc] init];
        s9.name = @"Sphere";
        s9.r = 4;

        Shapes *s10 = [[Shapes alloc] init];
        s10.name = @"Cone";
        s10.r = 4;
        s10.h = 7;
        
        [cal calculateArea:s1];
        [cal calculatePerimeter:s1];
        [cal calculateArea:s2];
        [cal calculatePerimeter:s2];
        [cal calculateArea:s3];
        [cal calculateCircumference:s3];
        [cal calculateArea:s4];
        [cal calculateArea:s5];
        [cal calculateVolume:s6];
        [cal calculateVolume:s7];
        [cal calculateVolume:s8];
        [cal calculateVolume:s9];
        [cal calculateVolume:s10];
        
        
        
    }
    return 0;
}

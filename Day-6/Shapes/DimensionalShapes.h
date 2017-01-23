//
//  DimensionalShapes.h
//  Shapes
//
//  Created by Sungwoo Kang on 2017. 1. 23..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shapes.h"

@interface DimensionalShapes : NSObject

@property CGFloat resultArea;
@property CGFloat resultPerimeter;
@property CGFloat resultCircumference;
@property CGFloat resultVolume;


- (void)calculate:(Shapes *)calculateShapes;





@end

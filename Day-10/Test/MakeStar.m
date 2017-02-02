//
//  MakeStar.m
//  Test
//
//  Created by Sungwoo Kang on 2017. 2. 2..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "MakeStar.h"

@implementation MakeStar

+ (void)makeStar:(NSUInteger)num1
{
    for (NSUInteger i = 1; i <= num1; i++) {

        for (NSUInteger k = 1; k <= i; k++) {
            printf("*");
        }
        printf("\n");
    }
    //최종 출력 결과물 보기 편하게..
    printf("\n");
}

+ (void)makeStar2:(NSUInteger)num2
{
    for (NSUInteger i = num2; i >= 1; i--) {
        
        for (NSUInteger k = 1; k <= i; k++) {
            printf("*");
        }
        printf("\n");
    }
    //최종 출력 결과물 보기 편하게..
    printf("\n");
}

+ (void)makeStar3:(NSUInteger)num3
{
    for (NSUInteger i = 1; i <= num3; i++) {
        for (NSUInteger j = 1; j <= num3 - i; j++) {
            printf(" ");
        }
        for (NSUInteger k = 1; k <= i; k++) {
            printf("*");
        }
        printf("\n");
    }
    //최종 출력 결과물 보기 편하게..
    printf("\n");
}

+ (void)makeStar4:(NSUInteger)num4
{
    for (NSUInteger i = 1; i <= num4; i++) {
        for (NSUInteger j = 1; j <= num4 - i; j++) {
            printf(" ");
        }
        for (NSUInteger k = 1; k <= 2 * i - 1; k++) {
            printf("*");
        }
        printf("\n");
    }
    //최종 출력 결과물 보기 편하게..
    printf("\n");
}






@end

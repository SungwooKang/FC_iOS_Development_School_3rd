//
//  ViewController.m
//  Day-14
//
//  Created by Sungwoo Kang on 2017. 2. 9..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *array = [NSArray arrayWithObjects:@"5", @"3", @"7", @"1", @"6", @"9", @"2", nil];
    NSArray *secondArray = [self bubbleSort:array];
    NSLog(@"%@", secondArray);
    

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSArray *)bubbleSort:(NSArray *)unSortedList
{
    NSMutableArray *sortedList = [NSMutableArray arrayWithArray:unSortedList];
    for (NSInteger j = 1; j < sortedList.count; j++) {
        for (NSInteger i = 1; i < sortedList.count; i++) {
            
            if ([sortedList[i-1] intValue] > [sortedList[i] intValue]) {
                [sortedList exchangeObjectAtIndex:i-1 withObjectAtIndex:i];
                
            }
        }
        
        
        
    }
    return sortedList;
}

@end

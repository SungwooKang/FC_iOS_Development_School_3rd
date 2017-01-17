//
//  ViewController.m
//  day-1
//
//  Created by Sungwoo Kang on 2017. 1. 16..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSLog(@"브레이크 포인트 전");
    
    NSLog(@"브레이크 포인트 후");
    
    NSLog(@"중간 공백........");
    
    NSLog(@"다음 브레이크 포인트 전");
    
    NSLog(@"다음 브레이크 포인트 후");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
}


- (IBAction)btnAction
{
    [self.titleLB setText:@"걱정따윈 없어! \n내 친구와 함께니까"];
    
}

- (IBAction)btnAction2
{
    [self.titleLB setText:@"삐까삐까"];
    
}

- (IBAction)btnAction3
{
    [self.Hi setText:@"삐까삐까2"];
    
}

@end

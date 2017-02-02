//
//  ViewController.m
//  Day-10
//
//  Created by Sungwoo Kang on 2017. 2. 2..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(15, 15, 345, 100)];
    myView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:myView];

    UIView *mySecondView = [[UIView alloc] initWithFrame:CGRectMake(15, self.view.frame.size.height - 115, 345, 100)];
    mySecondView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:mySecondView];
    
    
//    UIView *subView = [[UIView alloc] init];
//    subView.frame = CGRectMake(10, 30, 50, 200);
//    [subView setBackgroundColor:[UIColor redColor]];
//    [myView addSubview:subView];
    

}
    
    


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end

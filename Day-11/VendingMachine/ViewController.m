//
//  ViewController.m
//  VendingMachine
//
//  Created by Sungwoo Kang on 2017. 2. 3..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property UIButton *p1;
@property UIButton *p2;
@property UIButton *p3;
@property UIButton *bvg1P;
@property UIButton *bvg2P;
@property UIButton *bvg3P;
@property UIButton *bvg4P;


@property UILabel *price;

@property NSInteger totalMoney;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.totalMoney = 0;

    
    
    UIImageView *bvg1 = [[UIImageView alloc] initWithFrame:CGRectMake(50, 100, (self.view.frame.size.width - 115) / 2, 150)];
    [bvg1 setImage:[UIImage imageNamed:@"image1.png"]];
    bvg1.layer.borderWidth = 2;
    bvg1.layer.borderColor = [UIColor lightGrayColor].CGColor;
    [bvg1 setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:bvg1];
    
    self.bvg1P = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 115) / 4 + 20, 255, 60, 30)];
    [self.bvg1P setTitle:@"1000원" forState:UIControlStateNormal];
    [self.bvg1P setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.bvg1P setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    [self.bvg1P addTarget:self action:@selector(buy:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.bvg1P];
    
    UIImageView *bvg2 = [[UIImageView alloc] initWithFrame:CGRectMake((self.view.frame.size.width -115) / 2 + 65, 100, (self.view.frame.size.width - 115) / 2, 150)];
    [bvg2 setImage:[UIImage imageNamed:@"image2.png"]];
    bvg2.layer.borderWidth = 2;
    bvg2.layer.borderColor = [UIColor lightGrayColor].CGColor;
    [bvg2 setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:bvg2];
    
    self.bvg2P = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 115) / 4 + 35 + (self.view.frame.size.width - 115) / 2, 255, 60, 30)];
    [self.bvg2P setTitle:@"1200원" forState:UIControlStateNormal];
    [self.bvg2P setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.bvg2P setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    [self.bvg2P addTarget:self action:@selector(buy:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.bvg2P];
    
    UIImageView *bvg3 = [[UIImageView alloc] initWithFrame:CGRectMake(50, 300, (self.view.frame.size.width - 115) / 2, 150)];
    [bvg3 setImage:[UIImage imageNamed:@"image3.png"]];
    bvg3.layer.borderWidth = 2;
    bvg3.layer.borderColor = [UIColor lightGrayColor].CGColor;
    [bvg3 setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:bvg3];
    
    self.bvg3P = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 115) / 4 + 20, 455, 60, 30)];
    [self.bvg3P setTitle:@"800원" forState:UIControlStateNormal];
    [self.bvg3P setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.bvg3P setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    [self.bvg3P addTarget:self action:@selector(buy:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.bvg3P];
    
    UIImageView *bvg4 = [[UIImageView alloc] initWithFrame:CGRectMake((self.view.frame.size.width -115) / 2 + 65, 300, (self.view.frame.size.width - 115) / 2, 150)];
    [bvg4 setImage:[UIImage imageNamed:@"image4.png"]];
    bvg4.layer.borderWidth = 2;
    bvg4.layer.borderColor = [UIColor lightGrayColor].CGColor;
    [bvg4 setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:bvg4];
    
    self.bvg4P = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 115) / 4 + 35 + (self.view.frame.size.width - 115) / 2, 455, 60, 30)];
    [self.bvg4P setTitle:@"1500원" forState:UIControlStateNormal];
    [self.bvg4P setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.bvg4P setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    [self.bvg4P addTarget:self action:@selector(buy:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.bvg4P];
    
    
    
    UIView *calView = [[UIView alloc] initWithFrame:CGRectMake(50, 500, self.view.frame.size.width - 100, 60)];
    [calView setBackgroundColor:[UIColor lightGrayColor]];
    [self.view addSubview:calView];
    
    self.price = [[UILabel alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 100) / 2 - 100, 15, 200, 30)];
    self.price.text = [NSString stringWithFormat:@"잔액 : %ld원", self.totalMoney];
    [self.price setTextColor:[UIColor whiteColor]];
    [self.price setTextAlignment:NSTextAlignmentCenter];
    [calView addSubview:self.price];
    
    
    self.p1 = [[UIButton alloc] initWithFrame:CGRectMake(50, 580, (self.view.frame.size.width - 100) / 3, 30)];
    [self.p1 setBackgroundImage:[UIImage imageNamed:@"btn1.png"] forState:UIControlStateNormal];
    [self.p1 setBackgroundImage:[UIImage imageNamed:@"btn11.png"] forState:UIControlStateHighlighted];
    [self.p1 addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:self.p1];

    self.p2 = [[UIButton alloc] initWithFrame:CGRectMake(50 + (self.view.frame.size.width - 100) / 3, 580, (self.view.frame.size.width - 100) / 3, 30)];
    [self.p2 setBackgroundImage:[UIImage imageNamed:@"btn2.png"] forState:UIControlStateNormal];
    [self.p2 setBackgroundImage:[UIImage imageNamed:@"btn22.png"] forState:UIControlStateHighlighted];
    [self.p2 addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:self.p2];
    
    self.p3 = [[UIButton alloc] initWithFrame:CGRectMake(50 + (self.view.frame.size.width - 100) * 2/ 3, 580, (self.view.frame.size.width - 100) / 3, 30)];
    [self.p3 setBackgroundImage:[UIImage imageNamed:@"btn3.png"] forState:UIControlStateNormal];
    [self.p3 setBackgroundImage:[UIImage imageNamed:@"btn33.png"] forState:UIControlStateHighlighted];
    [self.p3 addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:self.p3];
    
    
    }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)buttonClicked:(UIButton *)selector
{
    
    if (selector == self.p1) {
        self.totalMoney += 1000;
        self.price.text = [NSString stringWithFormat:@"잔액 : %ld원", self.totalMoney];
    }else if (selector == self.p2)
    {
        self.totalMoney += 500;
        self.price.text = [NSString stringWithFormat:@"잔액 : %ld원", self.totalMoney];

    }else
    {
        self.totalMoney += 100;
        self.price.text = [NSString stringWithFormat:@"잔액 : %ld원", self.totalMoney];

    }
    
}


- (void)buy:(UIButton *)selector
{
    
    if (selector == self.bvg1P) {
        self.totalMoney -= 1000;
        if (self.totalMoney < 0) {
            self.price.text = @"잔액이 부족합니다.";
            self.totalMoney += 1000;
        }else{
            self.price.text = [NSString stringWithFormat:@"잔액 : %ld원", self.totalMoney];
        }
            }else if (selector == self.bvg2P)
    {
        self.totalMoney -= 1200;
        if (self.totalMoney < 0) {
            self.price.text = @"잔액이 부족합니다.";
            self.totalMoney += 1200;
        }else{
            self.price.text = [NSString stringWithFormat:@"잔액 : %ld원", self.totalMoney];
        }
        
    }else if (selector == self.bvg3P)
    {
        self.totalMoney -= 800;
        if (self.totalMoney < 0) {
            self.price.text = @"잔액이 부족합니다.";
            self.totalMoney += 800;
        }else{
            self.price.text = [NSString stringWithFormat:@"잔액 : %ld원", self.totalMoney];
        }
        
    }else if (selector == self.bvg4P)
    {
        self.totalMoney -= 1500;
        if (self.totalMoney < 0) {
            self.price.text = @"잔액이 부족합니다.";
            self.totalMoney += 1500;
        }else{
            self.price.text = [NSString stringWithFormat:@"잔액 : %ld원", self.totalMoney];
        }
    }
    
    
}


@end

//
//  ViewController.m
//  Day-11
//
//  Created by Sungwoo Kang on 2017. 2. 3..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
//    // 1번
//    UIView *viewTest = [[UIView alloc] initWithFrame:CGRectMake(15, 15, self.view.frame.size.width - 30, self.view.frame.size.height - 30)];
//    [viewTest setBackgroundColor:[UIColor blueColor]];
//    [self.view addSubview:viewTest];
//    
//    
//    UIView *subView1 = [[UIView alloc] init];
//    subView1.frame = CGRectMake(15, 15, viewTest.frame.size.width - 30, viewTest.frame.size.height - 30);
//    [subView1 setBackgroundColor:[UIColor redColor]];
//    [viewTest addSubview:subView1];
//    
//    UIView *subView2 = [[UIView alloc] init];
//    subView2.frame = CGRectMake(15, 15, subView1.frame.size.width - 30, subView1.frame.size.height - 30);
//    [subView2 setBackgroundColor:[UIColor greenColor]];
//    [subView1 addSubview:subView2];
//    
//    
//    // 2번
//    UIView *topView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 64)];
//    [topView setBackgroundColor:[UIColor redColor]];
//    [topView setAlpha:0.7];
//    [self.view addSubview:topView];
//    
//    UIView *middleView = [[UIView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height - 112)];
//    [middleView setBackgroundColor:[UIColor lightGrayColor]];
//    [middleView setAlpha:0.7];
//    [self.view addSubview:middleView];
//
//    UIView *bottomView = [[UIView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height - 48, self.view.frame.size.width, 48)];
//    [bottomView setBackgroundColor:[UIColor purpleColor]];
//    [bottomView setAlpha:0.7];
//    [self.view addSubview:bottomView];
//
//
//    // 3번
//    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(self.view.center.x - 50, self.view.center.y - 50, 90, 10)];
//    [view1 setBackgroundColor:[UIColor redColor]];
//    [self.view addSubview:view1];
//    
//    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(self.view.center.x + 40, self.view.center.y - 50, 10, 90)];
//    [view2 setBackgroundColor:[UIColor greenColor]];
//    [self.view addSubview:view2];
//    
//    UIView *view3 = [[UIView alloc] initWithFrame:CGRectMake(self.view.center.x - 50, self.view.center.y - 40, 10, 90)];
//    [view3 setBackgroundColor:[UIColor blueColor]];
//    [self.view addSubview:view3];
//    
//    UIView *view4 = [[UIView alloc] initWithFrame:CGRectMake(self.view.center.x - 40, self.view.center.y + 40, 90, 10)];
//    [view4 setBackgroundColor:[UIColor purpleColor]];
//    [self.view addSubview:view4];
    
    
    
    UIView *header = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 168)];
    [header setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:header];
    
    UIImageView *profile = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.center.x - 40, 128, 80, 80)];
    [profile setImage:[UIImage imageNamed:@"profile.png"]];
    [profile setContentMode:UIViewContentModeScaleAspectFill];
    [self.view addSubview:profile];
    
    UILabel *name = [[UILabel alloc] initWithFrame:CGRectMake(self.view.center.x - 40, 211, 80, 25)];
    [name setTextColor:[UIColor blackColor]];
    [name setText:@"강성우"];
    [name setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:name];

    UILabel *company = [[UILabel alloc] initWithFrame:CGRectMake(self.view.center.x - 40, 238, 80, 13)];
    [company setTextColor:[UIColor lightGrayColor]];
    [company setText:@"Fastcampus"];
    [company setFont:[UIFont systemFontOfSize:12]];
    [company setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:company];
    
    UIView *pic1 = [[UIView alloc] initWithFrame:CGRectMake(0, 268, self.view.frame.size.width / 4, 45)];
    [pic1 setBackgroundColor:[UIColor greenColor]];
    [self.view addSubview:pic1];
    
    UIView *subPic1 = [[UIView alloc] init];
    subPic1.frame = CGRectMake(5, 5, pic1.frame.size.width - 10, 15);
    [subPic1 setBackgroundColor:[UIColor redColor]];
    [pic1 addSubview:subPic1];

    UIView *subPic2 = [[UIView alloc] init];
    subPic2.frame = CGRectMake(5, 25, pic1.frame.size.width - 10, 15);
    [subPic2 setBackgroundColor:[UIColor redColor]];
    [pic1 addSubview:subPic2];
    
    UIView *pic2 = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width / 4, 268, self.view.frame.size.width / 4, 45)];
    [pic2 setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:pic2];
    
    UIView *subPic3 = [[UIView alloc] init];
    subPic3.frame = CGRectMake(5, 5, pic1.frame.size.width - 10, 15);
    [subPic3 setBackgroundColor:[UIColor redColor]];
    [pic2 addSubview:subPic3];
    
    UIView *subPic4 = [[UIView alloc] init];
    subPic4.frame = CGRectMake(5, 25, pic1.frame.size.width - 10, 15);
    [subPic4 setBackgroundColor:[UIColor redColor]];
    [pic2 addSubview:subPic4];
    
    UIView *pic3 = [[UIView alloc] initWithFrame:CGRectMake(self.view.center.x, 268, self.view.frame.size.width / 4, 45)];
    [pic3 setBackgroundColor:[UIColor greenColor]];
    [self.view addSubview:pic3];
    
    UIView *subPic5 = [[UIView alloc] init];
    subPic5.frame = CGRectMake(5, 5, pic1.frame.size.width - 10, 15);
    [subPic5 setBackgroundColor:[UIColor redColor]];
    [pic3 addSubview:subPic5];
    
    UIView *subPic6 = [[UIView alloc] init];
    subPic6.frame = CGRectMake(5, 25, pic1.frame.size.width - 10, 15);
    [subPic6 setBackgroundColor:[UIColor redColor]];
    [pic3 addSubview:subPic6];
    
    UIView *pic4 = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width * 3 / 4, 268, self.view.frame.size.width / 4, 45)];
    [pic4 setBackgroundColor:[UIColor yellowColor]];
    [self.view addSubview:pic4];

    UIView *subPic7 = [[UIView alloc] init];
    subPic7.frame = CGRectMake(5, 5, pic1.frame.size.width - 10, 15);
    [subPic7 setBackgroundColor:[UIColor redColor]];
    [pic4 addSubview:subPic7];
    
    UIView *subPic8 = [[UIView alloc] init];
    subPic8.frame = CGRectMake(5, 25, pic1.frame.size.width - 10, 15);
    [subPic8 setBackgroundColor:[UIColor redColor]];
    [pic4 addSubview:subPic8];

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

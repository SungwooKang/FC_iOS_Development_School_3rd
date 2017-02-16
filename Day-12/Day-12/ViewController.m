//
//  ViewController.m
//  Day-12
//
//  Created by Sungwoo Kang on 2017. 2. 6..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property UIButton *num1;
@property UIButton *num2;
@property UIButton *num3;
@property UIButton *num4;
@property UIButton *num5;
@property UIButton *num6;
@property UIButton *num7;
@property UIButton *num8;
@property UIButton *num9;
@property UIButton *clear;
@property UILabel *resultWindow;
@property NSMutableString *resultText;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.resultText = [[NSMutableString alloc] init];
    
    
    // Do any additional setup after loading the view, typically from a nib.
    
    self.num1 = [[UIButton alloc] initWithFrame:CGRectMake(0, 250, self.view.frame.size.width / 3, (self.view.frame.size.height - 250) / 3)];
    [self.num1 setTitle:@"1" forState:UIControlStateNormal];
    [self.num1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.num1 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    self.num1.layer.borderWidth = 1;
    self.num1.layer.borderColor = [UIColor blackColor].CGColor;
    [self.num1 addTarget:self action:@selector(numClicked:) forControlEvents:UIControlEventTouchUpInside];
    self.num1.tag = 1;
    [self.view addSubview:self.num1];
    
    self.num2 = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width / 3, 250, self.view.frame.size.width / 3, (self.view.frame.size.height - 250) / 3)];
    [self.num2 setTitle:@"2" forState:UIControlStateNormal];
    [self.num2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.num2 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    self.num2.layer.borderWidth = 1;
    self.num2.layer.borderColor = [UIColor blackColor].CGColor;
    [self.num2 addTarget:self action:@selector(numClicked:) forControlEvents:UIControlEventTouchUpInside];
    self.num2.tag = 2;
    [self.view addSubview:self.num2];
    
    self.num3 = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width * 2 / 3, 250, self.view.frame.size.width / 3, (self.view.frame.size.height - 250) / 3)];
    [self.num3 setTitle:@"3" forState:UIControlStateNormal];
    [self.num3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.num3 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    self.num3.layer.borderWidth = 1;
    self.num3.layer.borderColor = [UIColor blackColor].CGColor;
    [self.num3 addTarget:self action:@selector(numClicked:) forControlEvents:UIControlEventTouchUpInside];
    self.num3.tag = 3;
    [self.view addSubview:self.num3];
    
    self.num4 = [[UIButton alloc] initWithFrame:CGRectMake(0, (self.view.frame.size.height - 250) / 3 + 250, self.view.frame.size.width / 3, (self.view.frame.size.height - 250) / 3)];
    [self.num4 setTitle:@"4" forState:UIControlStateNormal];
    [self.num4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.num4 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    self.num4.layer.borderWidth = 1;
    self.num4.layer.borderColor = [UIColor blackColor].CGColor;
    [self.num4 addTarget:self action:@selector(numClicked:) forControlEvents:UIControlEventTouchUpInside];
    self.num4.tag = 4;
    [self.view addSubview:self.num4];
    
    self.num5 = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width / 3, (self.view.frame.size.height - 250) / 3 + 250, self.view.frame.size.width / 3, (self.view.frame.size.height - 250) / 3)];
    [self.num5 setTitle:@"5" forState:UIControlStateNormal];
    [self.num5 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.num5 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    self.num5.layer.borderWidth = 1;
    self.num5.layer.borderColor = [UIColor blackColor].CGColor;
    [self.num5 addTarget:self action:@selector(numClicked:) forControlEvents:UIControlEventTouchUpInside];
    self.num5.tag = 5;
    [self.view addSubview:self.num5];
    
    self.num6 = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width * 2 / 3, (self.view.frame.size.height - 250) / 3 + 250, self.view.frame.size.width / 3, (self.view.frame.size.height - 250) / 3)];
    [self.num6 setTitle:@"6" forState:UIControlStateNormal];
    [self.num6 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.num6 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    self.num6.layer.borderWidth = 1;
    self.num6.layer.borderColor = [UIColor blackColor].CGColor;
    [self.num6 addTarget:self action:@selector(numClicked:) forControlEvents:UIControlEventTouchUpInside];
    self.num6.tag = 6;
    [self.view addSubview:self.num6];
    
    self.num7 = [[UIButton alloc] initWithFrame:CGRectMake(0, (self.view.frame.size.height - 250) * 2 / 3 + 250, self.view.frame.size.width / 3, (self.view.frame.size.height - 250) / 3)];
    [self.num7 setTitle:@"7" forState:UIControlStateNormal];
    [self.num7 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.num7 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    self.num7.layer.borderWidth = 1;
    self.num7.layer.borderColor = [UIColor blackColor].CGColor;
    [self.num7 addTarget:self action:@selector(numClicked:) forControlEvents:UIControlEventTouchUpInside];
    self.num7.tag = 7;
    [self.view addSubview:self.num7];
    
    self.num8 = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width / 3, (self.view.frame.size.height - 250) * 2 / 3 + 250, self.view.frame.size.width / 3, (self.view.frame.size.height - 250) / 3)];
    [self.num8 setTitle:@"8" forState:UIControlStateNormal];
    [self.num8 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.num8 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    self.num8.layer.borderWidth = 1;
    self.num8.layer.borderColor = [UIColor blackColor].CGColor;
    [self.num8 addTarget:self action:@selector(numClicked:) forControlEvents:UIControlEventTouchUpInside];
    self.num8.tag = 8;
    [self.view addSubview:self.num8];
    
    self.num9 = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width * 2 / 3, (self.view.frame.size.height - 250) * 2 / 3 + 250, self.view.frame.size.width / 3, (self.view.frame.size.height - 250) / 3)];
    [self.num9 setTitle:@"9" forState:UIControlStateNormal];
    [self.num9 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.num9 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    self.num9.layer.borderWidth = 1;
    self.num9.layer.borderColor = [UIColor blackColor].CGColor;
    [self.num9 addTarget:self action:@selector(numClicked:) forControlEvents:UIControlEventTouchUpInside];
    self.num9.tag = 9;
    [self.view addSubview:self.num9];
    
    self.resultWindow = [[UILabel alloc] initWithFrame:CGRectMake(20, 170, self.view.frame.size.width - 40, 50)];
    [self.resultWindow setTextColor:[UIColor blackColor]];
    [self.resultWindow setFont:[UIFont systemFontOfSize:50]];
    [self.resultWindow setTextAlignment:NSTextAlignmentRight];
    [self.view addSubview:self.resultWindow];
    
    
    self.clear = [[UIButton alloc] initWithFrame:CGRectMake(20, 50, self.view.frame.size.width - 40, 50)];
    [self.clear setTitle:@"C" forState:UIControlStateNormal];
    [self.clear setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.clear setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    [self.clear setContentHorizontalAlignment:UIControlContentHorizontalAlignmentRight];
    self.clear.tag = 10;
    [self.clear addTarget:self action:@selector(numClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.clear];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)numClicked:(UIButton *)sender
{

    if (sender.tag != 1 && sender.tag != 10 && self.resultText.length < 10) {
        [self.resultText appendString:[NSString stringWithFormat:@"%ld", sender.tag]];
        self.resultWindow.text = self.resultText;

    }else if (sender.tag == 1 && self.resultText.length < 14)
    {
        [self.resultText appendString:[NSString stringWithFormat:@"%ld", sender.tag]];
        self.resultWindow.text = self.resultText;
    }else if (sender.tag == 10)
    {
        self.resultText = [NSMutableString stringWithString:@""];
        self.resultWindow.text = self.resultText;
    }
    
    
    
}


@end

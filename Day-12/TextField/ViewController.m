//
//  ViewController.m
//  TextField
//
//  Created by Sungwoo Kang on 2017. 2. 6..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>

@property UITextField *tf1;
@property UITextField *tf2;
@property UIButton *ok;
@property UILabel *resultWindow;
@property NSString *result;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.result = [[NSString alloc] init];
    
    
    self.tf1 = [[UITextField alloc] initWithFrame:CGRectMake(40, 50, 180, 35)];
    self.tf1.borderStyle = UITextBorderStyleRoundedRect;
    self.tf1.placeholder = @"여기에 입력해주세요";
    self.tf1.delegate = self;
    self.tf1.textColor = [UIColor blackColor];
    self.tf1.tag = 1;
    [self.view addSubview:self.tf1];
    
//    self.tf2 = [[UITextField alloc] initWithFrame:CGRectMake(40, 100, 180, 35)];
//    self.tf2.borderStyle = UITextBorderStyleRoundedRect;
//    self.tf2.placeholder = @"여기에 입력해주세요";
//    self.tf2.delegate = self;
//    self.tf2.textColor = [UIColor blackColor];
//    self.tf2.tag = 2;
//    [self.view addSubview:self.tf2];

    self.ok = [[UIButton alloc] initWithFrame:CGRectMake(230, 50, 50, 35)];
    [self.ok setTitle:@"확인" forState:UIControlStateNormal];
    [self.ok setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.ok setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
    [self.ok addTarget:self action:@selector(okClicked:) forControlEvents:UIControlEventTouchUpInside];
    self.ok.tag = 3;
    [self.view addSubview:self.ok];
    
    self.resultWindow = [[UILabel alloc] initWithFrame:CGRectMake(40, 100, 180, 35)];
    [self.resultWindow setTextColor:[UIColor blackColor]];
    self.resultWindow.text = [NSString stringWithFormat:@"결과 : %@", self.result];
    [self.view addSubview:self.resultWindow];
    
}

// 리턴키 눌렀을 때
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
//    if (textField.tag == 1) {
//        // 리턴키 눌렀을 때 다음 텍스트 창으로
//        [self.tf2 becomeFirstResponder];
//    }else if (textField.tag == 2)
//    {
//        // 리턴키 눌렀을 때 키보드 내리기
//        [self.tf2 resignFirstResponder];
//    }else
//    {
//        NSLog(@"리턴키 눌렀다.");
//        
//    }
//    return YES;
//
//    }
    if (textField.tag == 1) {
        [self.tf1 resignFirstResponder];
        self.result = textField.text;
        self.resultWindow.text = [NSString stringWithFormat:@"결과 : %@", self.result];
    }
    return YES;
}

- (void)okClicked:(UIButton *)sender
{
    [self.tf1 resignFirstResponder];
    self.result = self.tf1.text;
    self.resultWindow.text = [NSString stringWithFormat:@"결과 : %@", self.result];
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

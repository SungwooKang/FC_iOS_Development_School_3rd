//
//  ViewController.m
//  LoginTest
//
//  Created by Sungwoo Kang on 2017. 2. 7..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UIScrollViewDelegate, UITextFieldDelegate>

@property UITextField *user;
@property UITextField *password;
@property UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImageView *main = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [main setImage:[UIImage imageNamed:@"background.png"]];
    main.userInteractionEnabled = YES;
    [self.view addSubview:main];
    
  
    
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(30, 60, self.view.frame.size.width - 60, 500)];
    [self.scrollView setContentSize:CGSizeMake(self.view.frame.size.width - 60, 600)];
    self.scrollView.delegate = self;
    self.scrollView.scrollEnabled = NO;
    [main addSubview:self.scrollView];
    
    UILabel *top = [[UILabel alloc] initWithFrame:CGRectMake(self.scrollView.center.x - 70, 100, 80, 60)];
    [top setText:@"Login"];
    [top setFont:[UIFont systemFontOfSize:30]];
    [top setTextColor:[UIColor whiteColor]];
    [top setTextAlignment:NSTextAlignmentCenter];
    [self.scrollView addSubview:top];
    
    
    self.user = [[UITextField alloc] initWithFrame:CGRectMake(15, 200, self.scrollView.frame.size.width - 30, 40)];
    self.user.textColor = [UIColor lightGrayColor];
    self.user.textAlignment = NSTextAlignmentLeft;
    self.user.borderStyle = UITextBorderStyleRoundedRect;
    self.user.placeholder = @"아이디를 입력해주세요.";
    self.user.delegate = self;
    self.user.tag = 1;
    [self.scrollView addSubview:self.user];

    self.password = [[UITextField alloc] initWithFrame:CGRectMake(15, 250, self.scrollView.frame.size.width - 30, 40)];
    self.password.textColor = [UIColor lightGrayColor];
    self.password.textAlignment = NSTextAlignmentLeft;
    self.password.borderStyle = UITextBorderStyleRoundedRect;
    self.password.placeholder = @"비밀번호를 입력해주세요.";
    self.password.delegate = self;
    self.password.tag = 2;
    self.password.secureTextEntry = YES;
    [self.scrollView addSubview:self.password];
    
    UIButton *login = [[UIButton alloc] initWithFrame:CGRectMake(15, 310, self.scrollView.frame.size.width - 30, 50)];
    [login setTitle:@"Login" forState:UIControlStateNormal];
    [login setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [login setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    [login setBackgroundImage:[UIImage imageNamed:@"button.png"] forState:UIControlStateNormal];
    [login setBackgroundImage:[UIImage imageNamed:@"button2.png"] forState:UIControlStateHighlighted];
    [self.scrollView addSubview:login];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField.tag == 1) {
        [self.password becomeFirstResponder];
        
    }else if (textField.tag == 2)
    {
        [self.password resignFirstResponder];
        [self.scrollView setContentOffset:CGPointMake(0, 0) animated:YES];

    }
    return YES;
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    [self.scrollView setContentOffset:CGPointMake(0, 70) animated:YES];
    return YES;

}



@end

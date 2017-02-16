//
//  ViewController.m
//  ArrayTest
//
//  Created by Sungwoo Kang on 2017. 2. 9..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>

@property UITextField *textWindow;
@property UILabel *label;
@property NSMutableArray *array;
@property NSMutableArray *array2;
@property NSMutableString *resultString;
@property NSString *joinedArray;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.textWindow = [[UITextField alloc] initWithFrame:CGRectMake(self.view.center.x - 100, 100, 200, 50)];
    self.textWindow.placeholder = @"입력해주세요.";
    self.textWindow.borderStyle = UITextBorderStyleRoundedRect;
    self.textWindow.delegate = self;
    [self.view addSubview:self.textWindow];
    
    
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(self.view.center.x - 100, 160, 200, 50)];
    [self.label setText:@"결과 : " ];
    [self.view addSubview:self.label];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if ([self.textWindow.text isEqualToString:@""]) {
        self.resultString = [NSMutableString stringWithString:@"결과 : "];
        self.label.text = self.resultString;
    }else {
        self.array = [NSMutableArray array];
        NSString *str = self.textWindow.text;
        for (NSInteger i = 0; i < str.length; i++) {
            NSString *ch = [str substringWithRange:NSMakeRange(i, 1)];
            [self.array addObject:ch];
        }
        
        self.array2 = [[NSMutableArray alloc] initWithObjects:self.array[0], nil];
        
        
        for (NSInteger j = 1; j < str.length; j++) {
            if (self.array[j] != self.array[j-1]) {
                [self.array2 addObject:self.array[j]];
            }
        }
        
        self.joinedArray = [self.array2 componentsJoinedByString:@""];
        self.resultString = [NSMutableString stringWithFormat:@"결과 : %@", self.joinedArray];
        self.label.text = self.resultString;

        
    }
    
    
    return YES;

}


@end

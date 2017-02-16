//
//  ViewController.m
//  StopWatch
//
//  Created by Sungwoo Kang on 2017. 2. 10..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property int min;
@property int sec;
@property int mSec;
@property NSUInteger try;




@end

@implementation ViewController
@synthesize timeLabel, startBtn, resetBtn, tryNum, resultWindow;




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    running = NO;
    count = 0;
    timeLabel.text = @"00:00.00";
    tryNum.text = @"시도 횟수 : 0";
    resultWindow.text = @"";
    startBtn.layer.cornerRadius = 40;
    resetBtn.layer.cornerRadius = 40;
    self.try = 0;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)startBtnPushed:(id)sender {
    if (running == NO) {
        self.try ++;
        resultWindow.text = @"";
        running = YES;
        [startBtn setTitle:@"STOP" forState:UIControlStateNormal];
        
        if (myTimer == nil) {
            myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
        }
        
        tryNum.text = [NSString stringWithFormat:@"시도 횟수 : %lu", self.try];
        
    }else
    {
        if (self.mSec == 0) {
            resultWindow.text = @"축하합니다. 완벽한 타이밍입니다!";
            self.try = 0;
        }
        running = NO;
        [myTimer invalidate];
        myTimer = nil;
        [startBtn setTitle:@"START" forState:UIControlStateNormal];

        
    }
    
}

- (IBAction)resetBtnPushed:(id)sender {
    tryNum.text = @"시도 횟수 : 0";
    self.try = 0;
    resultWindow.text = @"";

    
    running = NO;
    [myTimer invalidate];
    myTimer = nil;
    [startBtn setTitle:@"START" forState:UIControlStateNormal];
    count = 0;
    timeLabel.text = @"00:00.00";
}



- (void)updateTimer {
    
    count ++;
    self.min = floor(count/100/60);
    self.sec = floor(count/100);
    self.mSec = count % 100;

    
    if (self.sec >= 60) {
        self.sec = self.sec % 60;
    }
    
    timeLabel.text = [NSString stringWithFormat:@"%02d:%02d.%02d", self.min, self.sec, self.mSec];
    
}







@end

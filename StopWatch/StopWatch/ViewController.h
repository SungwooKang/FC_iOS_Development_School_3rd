//
//  ViewController.h
//  StopWatch
//
//  Created by Sungwoo Kang on 2017. 2. 10..
//  Copyright © 2017년 Sungwoo Kang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSTimer *myTimer;
    BOOL running;
    int count;
    
}
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@property (weak, nonatomic) IBOutlet UIButton *startBtn;
@property (weak, nonatomic) IBOutlet UIButton *resetBtn;
@property (weak, nonatomic) IBOutlet UILabel *tryNum;
@property (weak, nonatomic) IBOutlet UILabel *resultWindow;


- (IBAction)startBtnPushed:(id)sender;
- (IBAction)resetBtnPushed:(id)sender;

-(void)updateTimer;


@end


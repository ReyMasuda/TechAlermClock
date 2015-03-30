//
//  ViewController.m
//  TechAlermClock
//
//  Created by ReyMasuda on 2015/03/16.
//  Copyright (c) 2015年 ReyMasuda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    hourLabel.text = @"0";
    minutesLabel.text = @"0";
    secondLabel.text = @"0";
    
    hourTF.delegate = self;
    minutesTF.delegate = self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)setBt{
    hour = [hourTF.text intValue];
    minutes = [minutesTF.text intValue];
    second = 0;
    
    hourLabel.text = hourTF.text;
    minutesLabel.text = minutesTF.text;
    secondLabel.text = @"0";
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"WakeUpMen!!"
                                                    message:@"WakeUp!!!!!!!!!!!!!!!!!"
                                                   delegate:nil
                                          cancelButtonTitle:nil
                                          otherButtonTitles:@"YEAH", nil];
    [alert show];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:5
                                             target:self
                                           selector:@selector(setBt)
                                           userInfo:nil
                                            repeats:YES];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    //キーボードを消す
    [textField resignFirstResponder];
    return YES;
}

-(void)alert{
}

@end

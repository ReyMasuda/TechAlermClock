//
//  ViewController.h
//  TechAlermClock
//
//  Created by ReyMasuda on 2015/03/16.
//  Copyright (c) 2015年 ReyMasuda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    int hour;
    int minutes;
    int second;
    
    IBOutlet UILabel *hourLabel;
    IBOutlet UILabel *minutesLabel;
    IBOutlet UILabel *secondLabel;
    
    IBOutlet UITextField *hourTF;
    IBOutlet UITextField *minutesTF;
    
    NSTimer *timer;
}

-(IBAction)setBt;
-(IBAction)cancelBt;


@end


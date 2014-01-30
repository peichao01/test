//
//  PCViewController.h
//  UITableViewControllerTest
//
//  Created by 裴超 on 14-1-20.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PCViewController : UIViewController

@property(weak,nonatomic) IBOutlet UISwitch* switch1;
@property(weak,nonatomic) IBOutlet UISwitch* switch2;

@property(weak,nonatomic) IBOutlet UILabel* sliderLable;

@property(weak,nonatomic)IBOutlet UITextField* textField;

@property(strong,nonatomic)IBOutlet UIWebView* webView;

-(IBAction)switchChange:(id)sender;
-(IBAction)sliderValueChange:(id)sender;

-(IBAction)textFieldDidEndOnExit:(id)sender;
- (IBAction)textFieldEditingChanged:(id)sender;

@end

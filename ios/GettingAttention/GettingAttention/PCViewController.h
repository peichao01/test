//
//  PCViewController.h
//  GettingAttention
//
//  Created by 裴超 on 13-5-23.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface PCViewController : UIViewController <UIAlertViewDelegate, UIActionSheetDelegate>

@property (nonatomic, retain) UIAlertView *alertDialog;

@property (strong, nonatomic) IBOutlet UILabel *userOutput;

- (IBAction)doAlert:(id)sender;
- (IBAction)doMultiButtonAlert:(id)sender;
- (IBAction)doAlertInput:(id)sender;
- (IBAction)doActionSheet:(id)sender;
- (IBAction)doSound:(id)sender;
- (IBAction)doAlertSound:(id)sender;
- (IBAction)doVibration:(id)sender;

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex;
@end

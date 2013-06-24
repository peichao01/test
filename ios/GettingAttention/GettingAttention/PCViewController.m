//
//  PCViewController.m
//  GettingAttention
//
//  Created by 裴超 on 13-5-23.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import "PCViewController.h"

@interface PCViewController ()

@end

@implementation PCViewController

- (void)viewDidLoad
{
	_alertDialog = [[UIAlertView alloc] init];
	[_alertDialog addButtonWithTitle:@"Ok"];
	[_alertDialog addButtonWithTitle:@"Maybe Later"];
	[_alertDialog addButtonWithTitle:@"Never"];
	[_alertDialog setDelegate:self];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doAlert:(id)sender {
	/*UIAlertView *alertDialog;
	alertDialog = [[UIAlertView alloc]
				   initWithTitle:@"Alert Button Selected"
				   message:@"I need your attention NOW!"
				   delegate:nil
				   cancelButtonTitle:@"Ok"
				   otherButtonTitles: nil];
	[alertDialog show];*/
	[_alertDialog setTitle:@"Alert Button Selected"];
	[_alertDialog setMessage:@"I need your attention NOW!"];
	//[_alertDialog ]
	[_alertDialog show];
}

- (IBAction)doMultiButtonAlert:(id)sender {
	UIAlertView *alert = [[UIAlertView alloc]
							initWithTitle:@"Alert Button Selecte"
							message:@"I need your attention NOW!"
							delegate:self
							cancelButtonTitle:@"Ok"
							otherButtonTitles:@"Maybe Later", @"Never", nil];
	[alert show];
	//NSString *buttonTitle = [alert buttonTitleAtIndex:;]
}

- (IBAction)doAlertInput:(id)sender {
	UIAlertView *alert = [[UIAlertView alloc]
						  initWithTitle:@"Email Address"
						  message:@"Please enter your email address:"
						  delegate:self
						  cancelButtonTitle:@"Ok"
						  otherButtonTitles:nil];
	alert.alertViewStyle = UIAlertViewStylePlainTextInput;
	[alert show];
}

- (IBAction)doActionSheet:(id)sender {
	UIActionSheet *actionSheet;
	actionSheet = [[UIActionSheet alloc] initWithTitle:@"Available Actions"
									delegate:self
									cancelButtonTitle:@"Cancel"
									destructiveButtonTitle:@"Destroy"
									 otherButtonTitles:@"Negotiate", @"Compromise", nil];
	actionSheet.actionSheetStyle = UIActionSheetStyleBlackTranslucent;
	[actionSheet showFromRect:[(UIButton *)sender frame] inView:self.view animated:YES];
}

- (IBAction)doSound:(id)sender {
	SystemSoundID soundID;
	NSString *soundFile = [[NSBundle mainBundle]
						   pathForResource:@"平凡的世界1" ofType:@"m4a"];
	AudioServicesCreateSystemSoundID((__bridge CFURLRef)
									 [NSURL fileURLWithPath:soundFile]
									 , &soundID);
	AudioServicesPlaySystemSound(soundID);
}

- (IBAction)doAlertSound:(id)sender {
}

- (IBAction)doVibration:(id)sender {
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
	self.userOutput.text = [NSString stringWithFormat:@"%d", buttonIndex];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
	/*UIAlertView *alert;
	 alert = [[UIAlertView alloc]
	 initWithTitle:@"" message:@"" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles: nil];
	 [alert setMessage:[NSString stringWithFormat:@"you have clicked the %@ item.", buttonIndex == 0 ? @"1st" : buttonIndex == 1 ? @"2nd" : @"3td"]];
	 [alert show];*/
	
	if([alertView alertViewStyle] == UIAlertViewStylePlainTextInput){
		self.userOutput.text = [[alertView textFieldAtIndex:0] text];
	}else{
		self.userOutput.text = [NSString stringWithFormat:@"%d", buttonIndex];
	}
}
@end

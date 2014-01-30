//
//  PCViewController.m
//  Test1
//
//  Created by 裴超 on 13-9-26.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import "PCViewController.h"

@interface PCViewController ()

@end

@implementation PCViewController

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
//	[self resignFirstResponder];
//	[textField resignFirstResponder];
	[_mytext resignFirstResponder];
	
	return YES;
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
	if ([[alertView title] isEqualToString:@"title"]) {
		
		UIAlertView *alert = [UIAlertView new];
		[alert setDelegate:self];
	
		if(buttonIndex == 0)
		{
			[alert setTitle:@"cancel"];
			[alert setMessage:@"you clicked the \"Cancel\" button"];
		}
		else
		{
			[alert setTitle:@"ok"];
			[alert setMessage:@"you clicked the \"OK\" button"];
		}
	
		[alert addButtonWithTitle:@"ok"];
		[alert show];
	}
}

- (void)viewDidLoad
{
	[_mytext setDelegate:self];
	
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	//[_mytext becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doBtnHide:(id)sender {
	
	UIButton *btn = (UIButton *)sender;
	
	[_labelHelloWorld setHidden:![_labelHelloWorld isHidden]];
	
	[btn setTitle:([_labelHelloWorld isHidden] ? @"Show" : @"Hide") forState:UIControlStateNormal];
	
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"title" message:@"message" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"ok", nil];
	[alert show];
}

@end

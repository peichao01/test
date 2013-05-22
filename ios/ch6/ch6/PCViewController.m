//
//  PCViewController.m
//  ch6
//
//  Created by 裴超 on 13-5-18.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import "PCViewController.h"

@interface PCViewController ()

@end

@implementation PCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
-(IBAction)showName:(id)sender
{
	self.nameLabel.text = self.nameInput.text;
}
 */

- (IBAction)setName:(id)sender {
	self.userOutput.text = self.userInput.text;
}

- (IBAction)userInputDidEndOnExit:(id)sender {
	[sender resignFirstResponder];
}
@end

//
//  PCViewController.m
//  FieldButtonFun
//
//  Created by 裴超 on 13-5-22.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import "PCViewController.h"

@interface PCViewController ()

@end

@implementation PCViewController

- (void)viewDidLoad
{
	UIImage *normalImage = [[UIImage imageNamed:@"button1.png"] stretchableImageWithLeftCapWidth:12.0 topCapHeight:0.0];
	
	UIImage *pressedImage = [[UIImage imageNamed:@"button2.png"] stretchableImageWithLeftCapWidth:12.0 topCapHeight:0.0];
	
	[self.theButton setBackgroundImage:normalImage forState:UIControlStateNormal];
	
	[self.theButton setBackgroundImage:pressedImage forState:UIControlStateHighlighted];
	
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)createStory:(id)sender {
	NSString *text = [self.theTemplate.text stringByReplacingOccurrencesOfString:@"<place>" withString:self.thePlace.text];
	text = [text stringByReplacingOccurrencesOfString:@"<verb>" withString:self.theVerb.text];
	self.theStory.text = [text stringByReplacingOccurrencesOfString:@"<number>" withString:self.theNumber.text];
}

- (IBAction)hideKeyboard:(id)sender {
	[self.thePlace resignFirstResponder];
	[self.theVerb resignFirstResponder];
	[self.theNumber resignFirstResponder];
	[self.theTemplate resignFirstResponder];
}
@end

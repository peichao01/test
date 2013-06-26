//
//  PCEditViewController.m
//  MultiSceneIphone
//
//  Created by 裴超 on 13-5-24.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import "PCEditViewController.h"
@class PCEditViewController;

@interface PCEditViewController ()

@end

@implementation PCEditViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
	self.input.text = self.generalViewText;
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)backGeneralView:(id)sender {
	UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
	PCViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"generalView"];
	//vc.input.text = self.input.text;
	//[vc.input setText:[self.input text]];
	self.generalViewText = self.input.text;
	
	[self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)hideKeyboard:(id)sender {
	[self.input resignFirstResponder];
}
@end

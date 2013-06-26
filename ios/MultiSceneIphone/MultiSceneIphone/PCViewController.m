//
//  PCViewController.m
//  MultiSceneIphone
//
//  Created by 裴超 on 13-5-24.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import "PCViewController.h"
#import "PCEditViewController.h"

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

- (IBAction)segueToEdit:(id)sender {
	UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
	PCEditViewController *editVC = [mainStoryboard instantiateViewControllerWithIdentifier:@"editView"];
	editVC.modalTransitionStyle = UIModalTransitionStyleCoverVertical;//UIModalTransitionStyleFlipHorizontal;
	editVC.modalPresentationStyle = UIModalPresentationFormSheet;
	
	//[editVC.input setText: [self.input text]];
	//self.label.text = self.input.text;
	editVC.generalViewText = self.input.text;
	
	[self presentViewController:editVC animated:YES completion:nil];
}

- (IBAction)hideKeyboard:(id)sender {
	[self.input resignFirstResponder];
}
@end

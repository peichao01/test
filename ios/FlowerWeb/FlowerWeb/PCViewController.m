//
//  PCViewController.m
//  FlowerWeb
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
	self.flowerDetailView.hidden = ![self.switchDetail isOn];
	[self getFlower:nil];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)getFlower:(id)sender {
	NSURL *imageURL;
	NSURL *detailURL;
	NSString *imageURLString;
	NSString *detailURLString;
	NSString *color;
	int sessionID;
	
	color = [self.colorChoice titleForSegmentAtIndex:self.colorChoice.selectedSegmentIndex];
	sessionID = random()%50000;
	
	imageURLString = [NSString stringWithFormat:
					  @"http://www.floraphotographs.com/showrandomios.php?color=%@&session=%d", color, sessionID];
	detailURLString = [NSString stringWithFormat:
					   @"http://www.floraphotographs.com/detailios.php?session=%d", sessionID];
	
	imageURL = [NSURL URLWithString:imageURLString];
	detailURL = [NSURL URLWithString:detailURLString];
	
	[self.flowerView loadRequest:[NSURLRequest requestWithURL:imageURL]];
	[self.flowerDetailView loadRequest:[NSURLRequest requestWithURL:detailURL]];
	
	self.flowerDetailView.backgroundColor = [UIColor clearColor];
}

- (IBAction)toggleFlowerDetail:(id)sender {
	self.flowerDetailView.hidden = ![sender isOn];
}
@end

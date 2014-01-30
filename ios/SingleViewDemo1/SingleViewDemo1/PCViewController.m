//
//  PCViewController.m
//  SingleViewDemo1
//
//  Created by 裴超 on 13-10-4.
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
	
	_button = [[UIButton alloc] initWithFrame:CGRectMake(20, 20, 100, 30)];
	//_button.titleLabel.text = @"click me";
	[_button setTitle:@"click me" forState:UIControlStateNormal];
	_button.backgroundColor = [UIColor lightGrayColor];
	[self.view addSubview:_button];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

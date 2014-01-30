//
//  PCSubHomeViewController.m
//  TestDemo1
//
//  Created by 裴超 on 13-10-10.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import "PCSubHomeViewController.h"

@interface PCSubHomeViewController ()

@end

@implementation PCSubHomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
		//self.view.backgroundColor = [UIColor colorWithRed:100 green:100 blue:100 alpha:0.8];
		
		self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
		CGSize size = [[UIScreen mainScreen]bounds].size;
		int width = 200;
		int height = 50;
		
		self.button.frame = CGRectMake((size.width - width)/2, 100, width, height);
		[self.button setTitle:@"sub HOME" forState:UIControlStateNormal];
		
		[self.view addSubview:self.button];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

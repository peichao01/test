//
//  PCViewController.m
//  Scroller
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
	self.theScroller.contentSize = CGSizeMake(500.0, 1000.0);
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

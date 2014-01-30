//
//  PCLoginViewController.m
//  EmptyDemo1
//
//  Created by 裴超 on 13-10-4.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import "PCLoginViewController.h"

@interface PCLoginViewController ()

@end

@implementation PCLoginViewController

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
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	
	_button = [[UIButton alloc] initWithFrame:CGRectMake(50, 50, 100, 30)];
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

//
//  PCRootViewController.m
//  UINavigationControllerDemo1
//
//  Created by 裴超 on 13-9-30.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import "PCRootViewController.h"

@interface PCRootViewController ()
{
	UIButton *_button;
}

@end

@implementation PCRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
		_button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
		_button.frame = CGRectMake(20, 20, 280, 20);
		_button.backgroundColor = [UIColor clearColor];
		[_button setTitle:@"Click Me" forState:UIControlStateNormal];
		//_button.adjustsImageWhenDisabled = NO;
		//_button.adjustsImageWhenDisabled = NO;
		//_button.showsTouchWhenHighlighted = YES;
		
		[_button addTarget:self action:nil forControlEvents:UIControlEventTouchUpInside];
		
		[self.view addSubview:_button];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	
	SEL onSelectLeftClickSEL = @selector(onSelectLeftClick:);
	UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:onSelectLeftClickSEL];
	self.navigationItem.leftBarButtonItem = leftButton;
	
	SEL onSelectRightClickSEL = @selector(onSelectRightClick:);
	UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:onSelectRightClickSEL];
	self.navigationItem.rightBarButtonItem = rightButton;
}

-(void) onSelectLeftClick:(id)sender
{
	
}

-(void) onSelectRightClick:(id)sender
{
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

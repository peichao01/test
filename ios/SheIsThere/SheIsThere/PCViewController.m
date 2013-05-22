//
//  PCViewController.m
//  SheIsThere
//
//  Created by 裴超 on 13-5-15.
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
	
	/*_pageFind = [[PCPageFind alloc] init];
	[self.view addSubview:_pageFind];
	self.pageFind = [PCPageFind new];*/
	
	UILabel *myMessage;
	myMessage = [[UILabel alloc]initWithFrame:CGRectMake(30.0, 50.0, 300.0, 50.0)];
	myMessage.font = [UIFont systemFontOfSize:48];
	myMessage.text = @"Hello Xcode";
	myMessage.textColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@""]];
	//[self.window]
	[self.view addSubview:myMessage];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

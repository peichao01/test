//
//  PCViewController.m
//  ss
//
//  Created by 裴超 on 14-1-26.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#import "PCViewController.h"

@interface PCViewController ()

@end

@implementation PCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	[self.webview loadHTMLString:@"<!doctype>"
	 "<html>"
		"<head>"
		"<style>"
		"body{background:#bbb;}"
		"</style>"
		"</head>"
		"<body>"
		"<h1>Hi!</h1>"
		"<script>alert('a')</script>"
	 "</body>"
	 "</html>" baseURL:[NSURL URLWithString:@"ctrip"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

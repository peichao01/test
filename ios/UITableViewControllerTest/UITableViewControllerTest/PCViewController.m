//
//  PCViewController.m
//  UITableViewControllerTest
//
//  Created by 裴超 on 14-1-20.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#import "PCViewController.h"

@interface PCViewController ()

@end

@implementation PCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 100, 40)];
	label.text = @"hello world";
	[self.view addSubview:label];
	
	UIButton* button = [UIButton buttonWithType:UIButtonTypeSystem];
	[button setTitle:@"hello" forState:UIControlStateNormal];
	button.frame = CGRectMake(160, 20, 80, 30);
	button.backgroundColor = [UIColor grayColor];
	[button addTarget:self action:@selector(tap) forControlEvents:UIControlEventTouchUpInside];
	
	[self.view addSubview:button];
	
	self.textField.placeholder = @"placeholder";
	self.textField.clearButtonMode = YES;
	self.textField.clearsOnBeginEditing = YES;
	
//	NSURL* url = [NSURL URLWithString:@"http://www.baidu.com"];
//	NSURLRequest* request = [NSURLRequest requestWithURL:url];
//	
//	[self.webView loadRequest:request];
	NSString* path = [[NSBundle mainBundle] bundlePath];
	NSURL* baseURL = [NSURL fileURLWithPath:path];
	[self.webView loadHTMLString:@"<!doctype html><body><h1>HAHA</h1><script>alert('a')</script></body>" baseURL:nil];
	NSLog(@"====");
	
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)tap{
	NSLog(@"调用了tap方法");
}

-(IBAction)sliderValueChange:(id)sender{
	UISlider* _slider = (UISlider*) sender;
	self.sliderLable.text = [NSString stringWithFormat:@"%.2f",(float)_slider.value];
	NSLog(@"%@",self.sliderLable.text);
}

-(IBAction)switchChange:(id)sender{
	UISwitch* _switch = (UISwitch*)sender;
	[self.switch1 setOn:_switch.on animated:YES];
	[self.switch2 setOn:_switch.on animated:YES];
}

-(IBAction)textFieldDidEndOnExit:(id)sender{
	NSLog(@"%@",@"end");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)textFieldEditingChanged:(id)sender {
	UITextField* _tf = (UITextField*)sender;
	NSLog(@"%@",_tf.text);
}
@end

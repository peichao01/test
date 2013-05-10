//
//  PCViewController.m
//  Hello
//
//  Created by 裴超 on 13-5-10.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import "PCViewController.h"

@interface PCViewController ()
{
	UIButton *_btn;
	UITextField *_tf;
}
@end

@implementation PCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	//UIButton *
	_btn = [[UIButton alloc] initWithFrame:CGRectMake(10, 10, 200, 30)];
	//[_btn.titleLabel setText:@"获取所有用户"];
	[_btn setTitle:@"获取所有用户" forState:UIControlStateNormal];
	_btn.backgroundColor = [UIColor blueColor];
	[_btn addTarget:self action:@selector(btnTouchUp:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn];
	
	//UILabel *_label = [UILabel alloc] initWithFrame:CGRectMake(10, 50, 200, 30);
	//UITextField *
	_tf = [[UITextField alloc] initWithFrame:CGRectMake(10, 50, 200, 50)];
	_tf.backgroundColor = [UIColor whiteColor];
	_tf.borderStyle = UITextBorderStyleRoundedRect;
	[self.view addSubview:_tf];
	
}

-(IBAction) btnTouchUp:(UIButton *) btn
{
	NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
	NSURLResponse *response = [NSURLResponse new];
	NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"http://localhost:3000/api/user/get?all=true"]];
	[request setURL:url];
	[request setHTTPMethod:@"GET"];
	NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:nil];
	
	NSString *dataStr = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
	_tf.text = dataStr;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

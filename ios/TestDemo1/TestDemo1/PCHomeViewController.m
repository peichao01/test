//
//  PCHomeViewController.m
//  TestDemo1
//
//  Created by 裴超 on 13-10-9.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import "PCHomeViewController.h"

@interface PCHomeViewController ()

@end

@implementation PCHomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
		
		/*
		 self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
		CGSize size = [[UIScreen mainScreen]bounds].size;
		int width = 200;
		int height = 50;
		
		self.button.frame = CGRectMake((size.width - width)/2, 100, width, height);
		[self.button setTitle:@"page HOME" forState:UIControlStateNormal];
		
		[self.view addSubview:self.button];
		 */
		
		self.navController = [[UINavigationController alloc] init];
		
		self.subHomeVC = [[PCSubHomeViewController alloc] init];
		
		[self.navController pushViewController:self.subHomeVC animated:NO];
		self.navController.view.backgroundColor = [UIColor redColor];
		
		//self.navController.navigationItem.title = @"sub home nav title";
		//self.navController.title = @"sub home nav title";
		
		NSString *myString = @"hello world";
		NSError *error;
		_path = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents/file.txt"];
		if (![myString writeToFile:_path atomically:YES encoding:NSUTF8StringEncoding error:&error]) {
			NSLog(@"error writing to file:%@", [error localizedDescription]);
		}
		else{
			NSLog(@"success writing to file");
		}
		
		[self.view addSubview:self.navController.view];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	//[self.navigationItem setHidesBackButton:YES animated:NO];
	NSError *error;
	NSString *inString = [NSString stringWithContentsOfFile:_path encoding:NSUTF8StringEncoding error:&error];
	if(!inString)
	{
		NSLog(@"Error writing to file:%@", [error localizedDescription]);
	}
	else
	{
		NSLog(@"file string is: %@", inString);
	}
	
	//[NSThread sleepUntilDate:[NSDate dateWithTimeIntervalSinceNow:5.0f]];
	NSDate *now = [NSDate date];
	
	NSString *str = @"this is my place, bitch";
	NSArray *arr = [str componentsSeparatedByString:@" "];
	NSLog(@"%@", arr);
	
	NSString *s = @"12";
	NSLog(@"%d", [s intValue]);
	
	NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
	formatter.dateFormat = @"YYYY-MM-dd HH:mm:ss";
	NSString *timestamp = [formatter stringFromDate:now];
	
	NSLog(@"%@", timestamp);
	
	NSLog(@"%@", arr[0]);
	
	NSDictionary *dict = @{@"name":@"David", @"age":@25};
	NSLog(@"dict name: %@, dict age: %@", dict[@"name"], dict[@"age"]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

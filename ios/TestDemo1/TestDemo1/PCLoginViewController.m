//
//  PCLoginViewController.m
//  TestDemo1
//
//  Created by 裴超 on 13-10-9.
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
		
		self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
		
		//Size = [[UIScreen mainScreen] bounds].size;
		CGSize size = [[UIScreen mainScreen] bounds].size;
		int width = 200;
		int height = 60;
		self.button.frame = CGRectMake((size.width - width)/2, 100, width, height);
		
		NSString *tmpTitle = [NSString stringWithFormat:@"LOGIN PAGE %d", 5];
		NSString *title = [tmpTitle stringByAppendingString:@" - click me"];
		
		NSLog(@"%d", title.length);
		
		[self.button setTitle:title forState:UIControlStateNormal];
		//[button setBackgroundImage: forState:]
		
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

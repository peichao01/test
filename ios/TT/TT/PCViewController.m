//
//  PCViewController.m
//  TT
//
//  Created by 裴超 on 13-11-18.
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
	
	//NSString *classicStr = [[NSString alloc] initWithUTF8String:<#(const char *)#>];
	//NSString *classicStr = [NSString stringWithString:@"abc"];
	//NSLog(@"%@", classicStr);
	
	int multiplier = 7;
	int (^myBlock)(int) = ^(int num){return num * multiplier;};
	
	
	int result = myBlock(4);
	NSLog(@"%d", result);
	
	
//	Byte bdata[4] = {'a', 40, 'b', 'c'};
//	NSString *bStr = [[NSString alloc] initWithBytes:bdata length:4 encoding:NSASCIIStringEncoding];
//	NSLog(@"%@", bStr);
//	
//	
//	NSString *myString = @"Hello World";
//	NSError *error;
//	//NSLog(@"%@", NSHomeDirectory());
//	NSString *path = [NSHomeDirectory() stringByAppendingPathComponent:@"Documents/file.txt"];
//	if (![myString writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:&error]) {
//		NSLog(@"Error writing to file:%@", [error localizedDescription]);
//		return;
//	}
//	
//	NSString *inString = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&error];
//	if (!inString) {
//		NSLog(@"Error writing to file:%@", [error localizedDescription]);
//		return;
//	}
//	else{
//		NSLog(@"%@",inString);
//	}
//	
//	NSArray *array = [myString componentsSeparatedByString:@" "];
//	NSLog(@"%@", array);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

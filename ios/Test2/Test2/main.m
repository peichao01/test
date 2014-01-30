//
//  main.m
//  Test2
//
//  Created by 裴超 on 14-1-19.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "PCAppDelegate.h"

int global = 1000;

int main(int argc, char * argv[])
{
	@autoreleasepool {
//		//int local = 500;
//		void(^block)(void) = ^(void)
//		{
//			global++;
//			//local++;
//			NSLog(@"global -- : %d", global);
//			//NSLog(@"local -- : %d", local);
//		};
//		NSLog(@"global 1: %d",global);
//		block();
//		NSLog(@"global 2: %d",global);
//		return 0;
	    return UIApplicationMain(argc, argv, nil, NSStringFromClass([PCAppDelegate class]));
	}
}

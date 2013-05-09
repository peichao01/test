//
//  Cattle.m
//  tests_class_sel_imp
//
//  Created by 裴超 on 13-5-8.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import "Cattle.h"

@implementation Cattle

-(void) saySomething
{
	NSLog(@"Hello, I am a cattle, I have %d legs.", legsCount);
}

-(void) setLegsCount:(int)count
{
	legsCount = count;
}

@end

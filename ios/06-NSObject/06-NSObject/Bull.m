//
//  Bull.m
//  tests_class_sel_imp
//
//  Created by 裴超 on 13-5-8.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import "Bull.h"

@implementation Bull

-(void) saySomething
{
	NSLog(@"Hello, I am a %@ bull, I have %d legs.", [self getSkinColor], legsCount);
}

-(NSString *) getSkinColor
{
	return skinColor;
}

-(void) setSkinColor:(NSString *)color
{
	skinColor = color;
}

@end

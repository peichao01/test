//
//  Complex.m
//  ch9
//
//  Created by 裴超 on 13-5-8.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import "Complex.h"

@implementation Complex

@synthesize real, imaginary;

-(void)		print
{
	NSLog(@"%g + %gi ", real, imaginary);
}
-(void)		setReal:(double)r andImaginary:(double) i
{
	real = r;
	imaginary = i;
}
-(Complex *)	add:(Complex *) f
{
	Complex *c = [Complex new];
	
	[c setReal:real + f.real andImaginary:imaginary + f.imaginary];
	
	return c;
}

@end

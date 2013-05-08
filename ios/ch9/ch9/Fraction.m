//
//  Fraction.m
//  ch9
//
//  Created by 裴超 on 13-5-8.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

-(void) print
{
	NSLog(@"%i / %i ", numerator, denominator);
}
-(void) setNumerator:(int) n andDenominator:(int) d
{
	numerator = n;
	denominator = d;
}
-(Fraction *) add:(Fraction *) f
{
	Fraction *result = [Fraction new];
	[result setNumerator:f.numerator andDenominator:f.denominator];
	return result;
}

@end

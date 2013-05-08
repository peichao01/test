//
//  Fraction.h
//  ch9
//
//  Created by 裴超 on 13-5-8.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
{
	int numerator;
	int denominator;
}
@property int numerator, denominator;

-(void) print;
-(void) setNumerator:(int) n andDenominator:(int) d;
-(Fraction *) add:(Fraction *) f;
@end

//
//  Fraction2.m
//  Command
//
//  Created by 裴超 on 13-5-5.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import "Fraction2.h"

@implementation Fraction2

@synthesize numerator, denominator;

-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

-(void) setTo:(int)n over:(int)d
{
    numerator = n;
    denominator = d;
}

-(Fraction2 *) add:(Fraction2 *)f
{
    Fraction2 *ff = [Fraction2 new];
    ff.numerator = numerator * f.denominator + denominator * f.numerator;
    ff.denominator = denominator * f.denominator;
    return ff;
}

-(void) addToSelf:(Fraction2 *)f
{
    numerator = numerator * f.denominator + denominator * f.numerator;
    denominator = denominator * f.denominator;
}

-(void) simplify
{
    int small = numerator < denominator ? numerator : denominator;
    int i = 2;
    for (; i <= small; i++) {
        if (numerator / i * i == numerator && denominator / i * i == denominator) {
            numerator /= i;
            denominator /= i;
            [self simplify];
            break;
        }
    }
}

-(double) convertToNum
{
    if (denominator != 0) {
        return (double) numerator/denominator;
    }else{
        return 1.0;
    }
}

@end

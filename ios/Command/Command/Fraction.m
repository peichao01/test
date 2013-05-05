//
//  Fraction.m
//  Command
//
//  Created by 裴超 on 13-5-5.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

-(void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

-(void) setNumerator:(int)n
{
    numerator = n;
}

-(void) setDenominator:(int)d
{
    denominator = d;
}

-(int)  numerator
{
    return numerator;
}

-(int) denominator
{
    return denominator;
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

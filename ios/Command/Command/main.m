//
//  main.m
//  Command
//
//  Created by 裴超 on 13-5-5.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Fraction2.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        Fraction *frac1 = [Fraction new];
        Fraction *frac2 = [Fraction new];
        
        [frac1 setNumerator:3];
        [frac1 setDenominator:4];
        
        [frac2 setNumerator:4];
        [frac2 setDenominator:8];
        
        [frac1 print];
        [frac2 print];
        
        NSLog(@"frac1: %i / %i = %f.", [frac1 numerator], [frac1 denominator], [frac1 convertToNum]);
        NSLog(@"frac2: %i / %i = %f.", [frac2 numerator], [frac2 denominator], [frac2 convertToNum]);
        
        //[frac2 release];
        
        Fraction2 *frac3 = [Fraction2 new];
        Fraction2 *frac4 = [Fraction2 new];
        
        frac3.numerator = 3;
        frac3.denominator = 8;
        
        [frac4 setTo: 6 over: 12];
        
        [frac3 print];
        [frac4 print];
        
        NSLog(@"frac3: %i / %i = %f.", frac3.numerator, frac3.denominator, [frac3 convertToNum]);
        NSLog(@"frac4: %i / %i = %f.", frac4.numerator, frac4.denominator, [frac4 convertToNum]);
        
        Fraction2 *frac5 = [Fraction2 new];
        Fraction2 *frac6 = [Fraction2 new];
        
        [frac5 setTo:6 over:9];
        [frac6 setTo:8 over:10];
        
        Fraction2 *frac7 = [frac5 add:frac6];
        [frac6 addToSelf:frac5];
        
        [frac5 print];
        [frac6 print];
        [frac7 print];
        
        Fraction2 *frac8 = [Fraction2 new];
        [frac8 setTo:60 over:100];
        [frac8 simplify];
        [frac8 print];
    }
    return 0;
}


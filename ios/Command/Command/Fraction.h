//
//  Fraction.h
//  Command
//
//  Created by 裴超 on 13-5-5.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
{
    int numerator;
    int denominator;
}

-(void)     print;
-(void)     setNumerator: (int) n;
-(void)     setDenominator: (int) d;
-(int)      numerator;
-(int)      denominator;
-(double)   convertToNum;

@end

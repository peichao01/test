//
//  Fraction2.h
//  Command
//
//  Created by 裴超 on 13-5-5.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction2 : NSObject
{
    int numerator;
    int denominator;
}

@property int numerator, denominator;

-(void)         print;
-(void)         setTo:(int)n over:(int)d;
-(Fraction2 *)  add:(Fraction2 *)f;
-(void)         addToSelf:(Fraction2 *)f;
-(void)         simplify;
-(double)       convertToNum;

@end

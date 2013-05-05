// Program to work with fractions - class version

#import <Foundation/Foundation.h>
//#import "Fraction.m"

//---- @interface section ----

@interface Fraction: NSObject
{
	int numerator;
	int denominator;
}

-(void) print;
-(int) numerator;
-(int) denominator;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;

@end

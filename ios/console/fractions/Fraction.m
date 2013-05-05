//---- @implementaion section ----
#import <Foundation/Foundation.h>
#import "Fraction.h"

@implementation Fraction
-(void) print
{
	NSLog(@"%i/%i", numerator, denominator);
}

-(int) numerator
{
	return numerator;
}

-(int) denominator
{
	return denominator;
}

-(void) setNumerator: (int) n
{
	numerator = n;
}

-(void) setDenominator: (int) d
{
	denominator = d;
}
@end


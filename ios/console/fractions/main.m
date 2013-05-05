//---- @program section ----
#import <Foundation/Foundation.h>
#import "Fraction.m"

int main(int argc, char *argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	Fraction *myFraction;

	Fraction *frac1 = [[Fraction alloc] init];
	Fraction *frac2 = [[Fraction alloc] init];

	[frac1 setNumerator: 2];
	[frac1 setDenominator: 3];

	[frac2 setNumerator: 3];
	[frac2 setDenominator: 7];

	// Display the fraction using the print method
	NSLog(@"First fraction is:");
	[frac1 print];

	NSLog(@"Secod fraction is:");
	[frac2 print];

	[frac1 release];
	[frac2 release];

	NSLog(@"getter:");
	//NSLog(@"frac1 is: %d/%d.", [frac1 numerator], [frac1 denominator]);
	
	[pool drain];
	return 0;
}

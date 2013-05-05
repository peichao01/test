#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	int numerator = 1;
	int denominator = 3;
	NSLog(@"The fraction is %d/%d.", numerator, denominator);

	[pool drain];
	return 0;
}

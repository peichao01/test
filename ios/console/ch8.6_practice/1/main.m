#import <Foundation/Foundation.h>

#import "A.h"

int main(int argc, char *argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	A *a = [[A alloc] init];

	NSLog(@"a.x = %i.", a.x);

	[a release];

	[pool release];
	return 0;
}

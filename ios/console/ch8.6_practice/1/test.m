#import <Foundation/Foundation.h>

//#import "ClassA.h"
#import "A.h"

int main(int argc, char * argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	//ClassA * a = [[ClassA alloc] init];
	A *a = [A new];

	[a release];

	[pool release];
	return 0;
}

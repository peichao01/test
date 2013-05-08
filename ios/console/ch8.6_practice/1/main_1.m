#import <Foundation/Foundation.h>
#import "ClassA.h"
#import "ClassB.h"
#import "ClassC.h"

int main(int argc, char *argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	ClassA * a = [[ClassA alloc] init];
	ClassB * b = [[ClassB alloc] init];
	ClassC * c = [[ClassC alloc] init];

	[a initVar];
	[b initVar];
	[c initVar];

	[a print];
	[b print];
	[c print];
	
	[a release];
	[b release];
	[c release];

	[pool release];
	return 0;
}

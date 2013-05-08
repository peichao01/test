//#import "Test.h"
#import "Test.m"

int main(int argc, char *argv[])
{
	NSAutoreleasePool *pool = [NSAutoreleasePool new];

	Test *t = [Test new];
	
	[t setA: 95];
	[t setB: 96];

	NSLog(@"t.a: %i, t.b: %i.", t.a, t.b);

	[t release];

	[pool drain];
	return 0;
}

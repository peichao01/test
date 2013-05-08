#import <Foundation/Foundation.h>

int main (int argc, char *argv[])
{
	@autoreleasepool
	{
		NSString* s = @"Hello, world!";
		NSString* s2 = [s uppercaseString];
		NSLog(@"%@", s2);
	}
	return 0;
}

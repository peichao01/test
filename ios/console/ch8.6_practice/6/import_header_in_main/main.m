#import "XYPoint.h"
#import "Rectangle.h"
//#import "XYPoint.m"
//#import "Rectangle.m"

int main(int argc, char *argv[])
{
	NSAutoreleasePool *pool = [NSAutoreleasePool new];

	XYPoint *pt = [XYPoint new];
	Rectangle *rect = [Rectangle new];

	[pt setX:0 andY:0];
	[rect setWidth:200 andHeight:100];
	[rect setOrigin: pt];
	[pt release];

	NSLog(@"rect.width: %i, rect.height:%i.", rect.width, rect.height);
	//[rect printOrigin];

	[rect release];

	[pool drain];
	return 0;
}

#import "XYPoint.m"
#import "Rectangle.m"

int main(int argc, char *argv[])
{
	NSAutoreleasePool *pool = [NSAutoreleasePool new];

	XYPoint *pt = [XYPoint new];
	Rectangle *rect = [Rectangle new];

	[pt setX:0 andY:0];
	[rect setWidth:200 andHeight:100];
	//[rect setOrigin: pt];

	NSLog(@"pt.x: %i, pt.y:%i.", pt.x, pt.y);
	NSLog(@"rect.width: %i, rect.height:%i.", rect.width, rect.height);

	[pt release];
	[rect release];

	[pool drain];
	return 0;
}

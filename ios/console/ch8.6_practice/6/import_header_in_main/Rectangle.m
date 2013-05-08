#import "Rectangle.h"

@implementation Rectangle
@synthesize width, height;
-(void) setWidth:(int) w andHeight:(int) h
{
	width = w;
	height = h;
}
-(void) setOrigin:(XYPoint *) pt
{
	[origin setX:pt.x andY:pt.y];
}
/*-(void) printOrigin
{
	NSLog(@"RectangleInstance.origin.x: %i, RectangleInstance.origin.y: %i.", origin.x, origin.y);
}*/
@end

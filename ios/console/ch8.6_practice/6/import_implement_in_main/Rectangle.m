#import "Rectangle.h"

@implementation Rectangle
@synthesize width, height;
-(void) setWidth:(int) w andHeight:(int) h
{
	width = w;
	height = h;
}
/*-(void) setOrigin:(XYPoint *) pt
{
	[origin setX:pt.x andY:pt.y];
}*/
@end

#import "ClassA.h"

@implementation

@synthesize	x, y;

-(void) setX:(int) xVal andY:(int) yVal
{
	x = xVal;
	y = yVal;
}

-(void) initVar
{
	x = 100;
	y = 50;
}

-(void) print
{
	NSLog(@"x = %i, y = %i.", x, y);
}

@end

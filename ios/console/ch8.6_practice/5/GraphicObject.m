#import "GraphicObject.h"

@implementation GraphicObject

@synthesize fillColor, lineColor, filled;

-(void) setFillColor:(int) fc andLineColor:(int) lc
{
	fillColor = fc;
	lineColor = lc;

	filled = true;
}

@end

#import <Foundation/Foundation.h>

@interface GraphicObject: NSObject
{
	int fillColor;
	bool filled;
	int lineColor;
}
@property int fillColor, lineColor;
@property bool filled;

-(void) setFillColor:(int) fc andLineColor:(int) lc;

@end


@implementation GraphicObject

@synthesize fillColor, lineColor, filled;

-(void) setFillColor:(int) fc andLineColor:(int) lc
{
	fillColor = fc;
	lineColor = lc;

	filled = true;
}

@end


int main(int argc, char * argv[])
{
	NSAutoreleasePool * pool = [NSAutoreleasePool new];

	GraphicObject * go = [GraphicObject new];

	//NSLog(@"go.fillColor:%i\tgo.lineColor:%i\tgo.filled:%i.", go.fillColor, go.lineColor, go.filled);
	[go setFillColor:255 andLineColor:34];
	NSLog(@"go.fillColor:%i\tgo.lineColor:%i\tgo.filled:%i.", go.fillColor, go.lineColor, go.filled);

	[pool release];
	return 0;
}

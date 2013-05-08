#import <Foundation/Foundation.h>

#import "GraphicObject.h"

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

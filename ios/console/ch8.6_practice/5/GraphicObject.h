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

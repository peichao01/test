#import <Foundation/Foundation.h>

@class XYPoint;
//#import "XYPoint.h"

@interface Rectangle:NSObject
{
	int width;
	int height;
	XYPoint * origin;
}
@property int width, height;
-(void) setWidth:(int) w andHeight:(int) h;
-(void) setOrigin:(XYPoint *) pt;
//-(void) printOrigin;
@end

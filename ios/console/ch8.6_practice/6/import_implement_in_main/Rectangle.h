#import <Foundation/Foundation.h>

//@class XYPoint;

@interface Rectangle:NSObject
{
	int width;
	int height;
	//XYPoint * origin;
}
@property int width, height;
-(void) setWidth:(int) w andHeight:(int) h;
//-(void) setOrigin:(XYPoint *) pt;
@end

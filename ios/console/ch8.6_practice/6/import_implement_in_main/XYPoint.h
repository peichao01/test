#import <Foundation/Foundation.h>

@interface XYPoint:NSObject
{
	int x;
	int y;
}
@property int x, y;
-(void) setX:(int) x andY:(int) y;
@end

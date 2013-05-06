#import <Foundation/Foundation.h>

@interface ClassA: NSObject
{
	int x, y;
}
@property int x, y;

-(void) setX:(int) xVal andY:(int) yVal;
-(void) initVar;
-(void) print;

@end

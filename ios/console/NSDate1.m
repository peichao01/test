#import <Foundation/Foundation.h>

int main(int argc, const char* argv[])
{
	NSAutoreleasePool* pool = [NSAutoreleasePool new];

	NSCalendarDate* now = [NSCalendarDate calendarDate];
	NSLog(@"dayOfMonth: %ld", [now dayOfMonth]);
	NSLog(@"dayOfWeek: %ld", [now dayOfWeek]);
	NSLog(@"dayOfYear: %ld", [now dayOfYear]);
	NSLog(@"hourOfDay: %ld", [now hourOfDay]);

	//[now release];

	[pool drain];
	return 0;
}

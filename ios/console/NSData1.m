#import <Foundation/Foundation.h>

int main(int argc, char* argv[])
{
	NSAutoreleasePool* pool = [NSAutoreleasePool new];
	
	NSFileManager* fileManager = [NSFileManager new];
	NSData* fileData = [fileManager contentsAtPath:@"./text.txt"];
	[fileManager createFileAtPath:@"./text_cp.txt" contents:fileData attributes:nil];

	//NSString* fileStr =  [[NSString alloc] initWithData:fileData encoding:NSUTF8StringEncoding];
	//NSLog(@"contents:%@", fileStr);

	//[fileStr release];
	[fileData release];
	[fileManager release];

	[pool drain];

	return 0;
}

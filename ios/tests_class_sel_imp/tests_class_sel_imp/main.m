//
//  main.m
//  tests_class_sel_imp
//
//  Created by 裴超 on 13-5-8.
//  Copyright (c) 2013年 裴超. All rights reserved.
//
//	objective-c中的 Class(类类型), selector(SEL), 函数指针(IMP)
//

#import <Foundation/Foundation.h>
#import "DoProxy.h"
#import "TestRelation.h"

int main(int argc, const char * argv[])
{

	/*@autoreleasepool {
	    
	    // insert code here...
	    NSLog(@"Hello, World!");
	    
	}*/
	//PART I
	NSAutoreleasePool *pool = [NSAutoreleasePool new];
	DoProxy *doProxy = [DoProxy new];

	[doProxy setAllVars];
	[doProxy SELFuncs];
	[doProxy functionPointers];

	[doProxy release];

	//PART II
	TestRelation *test = [TestRelation new];
	[test test];
	[test release];

	[pool drain];
	return 0;
}


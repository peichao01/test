//
//  main.m
//  06-NSObject
//
//  Created by 裴超 on 05/09/13.
//  Copyright (c) 2013 ___peichao___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cattle.h"
#import "Bull.h"
#import "MyNSObject.h"

int main (int argc, const char * argv[]) {
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	id cattle = [Cattle new];
	id redBull = [Bull new];
	SEL setLegsCount_SEL = @selector(setLegsCount:);
	IMP cattle_setLegsCount_IMP = [cattle methodForSelector:setLegsCount_SEL];
	IMP redBull_setLegsCount_IMP = [redBull methodForSelector:setLegsCount_SEL];

	[cattle setLegsCount:4];
	[redBull setLegsCount:4];
	[redBull setSkinColor:@"red"];

	Class cattle_class = cattle->isa;
	MyClass my_cattle_class = cattle->isa;
	SEL say = @selector(saySomething);
	IMP cattle_sayFunc = [cattle methodForSelector:say];
	cattle_sayFunc(cattle, say);

	Class redBull_class = redBull->isa;
	MyClass my_redBull_class = redBull->isa;

	IMP redBull_sayFunc = [redBull methodForSelector:say];
	redBull_sayFunc(redBull, say);

	[pool drain];
	return 0;
}
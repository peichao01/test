//
// Created by 裴超 on 13-5-9.
// Copyright (c) 2013 裴超. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "TestRelation.h"


@implementation TestRelation

-(void) test
{
	Bull *bull = [Bull new];

	// isMemberOf:
	if([bull isMemberOfClass:[Bull class]] == YES)
		NSLog(@"bull is a member of Bull class.");

	if([bull isMemberOfClass:[Cattle class]] == YES)
		NSLog(@"bull is a member of Cattle class.");
	else
		NSLog(@"bull is NOT a member of Cattle class.");

	if([bull isMemberOfClass:[NSObject class]])
		NSLog(@"bull is a member of NSObject class.");
	else
		NSLog(@"bull is NOT a member of NSObject class.");

	// isKindOf:
	if([bull isKindOfClass:[Bull class]] == YES)
		NSLog(@"bull is kind of Bull.");

	if([bull isKindOfClass:[Cattle class]] == YES)
		NSLog(@"bull is kind of Cattle");

	if([bull isKindOfClass:[NSObject class]] == YES)
		NSLog(@"bull is kind of NSObject");

	// respondsTo:
	if([bull respondsToSelector:@selector(getSkinColor)] == YES)
		NSLog(@"bull responds to getSkinColor method.");

	if([bull respondsToSelector:@selector(setLegsCount:)] == YES)
		NSLog(@"bull responds to setLegsCount: method.");

	if([bull respondsToSelector:@selector(alloc)] == YES)
		NSLog(@"bull responds to alloc method.");
	else
		NSLog(@"bull DO NOT responds to alloc method.");

	if([Bull respondsToSelector:@selector(alloc)] == YES)
		NSLog(@"Bull class responds to alloc method.");

	// instancesRespondsTo:
	if([Cattle instancesRespondToSelector:@selector(getSkinColor)] == YES)
		NSLog(@"Instances of Cattle respond to getSkinColor method.");
	else
		NSLog(@"Instances of Cattle DO NOT respond to getSkinColor method.");

	if([Cattle instancesRespondToSelector:@selector(setLegsCount:)] == YES)
		NSLog(@"Instances of Cattle respnd to setLegsCount: method.");

	if([Cattle instancesRespondToSelector:@selector(alloc)] == YES)
		NSLog(@"Instances of Cattle respnd to alloc method.");
	else
		NSLog(@"Instances of Cattle DO NOT respnd to alloc method.");

	// isSubclassOfClass
	if([Bull isSubclassOfClass:[Cattle class]] == YES)
		NSLog(@"Bull is a subclass of a Cattle.");

	[bull release];
}

@end
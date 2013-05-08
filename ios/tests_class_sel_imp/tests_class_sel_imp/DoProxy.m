//
//  DoProxy.m
//  tests_class_sel_imp
//
//  Created by 裴超 on 13-5-8.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import "DoProxy.h"
#import "Cattle.h"
#import "Bull.h"

@implementation DoProxy

firstRun = YES;

-(void) setAllVars
{
	cattle[0] = [Cattle new];
	
	bullClass = NSClassFromString(BULL_CLASS);
	cattle[1] = [bullClass new];
	cattle[2] = [bullClass new];
	
	say = @selector(saySomething);
	skin = NSSelectorFromString(SET_SKIN_COLOR);
}

-(void) doWithCattleId:(id)aCattle colorParam:(NSString *)color
{
	if (notFirstRun == NO) {
		NSString *myName = NSStringFromSelector(_cmd);
		NSLog(@"Running in the method of %@", myName);
		notFirstRun = YES;
	}
	
	NSString *cattleParamClassName = [aCattle className];
	
	if([cattleParamClassName isEqualToString:BULL_CLASS] ||
	   [cattleParamClassName isEqualToString:CATTLE_CLASS])
	{
		[aCattle setLegsCount:4];
		if([aCattle respondsToSelector:skin])
		{
			[aCattle performSelector:skin withObject:color];
		}
		else
		{
			NSLog(@"Hi, I am a %@, have not setSkinColor!", cattleParamClassName);
		}
		[aCattle performSelector:say];
	}
	else
	{
		NSString *yourClassName = [aCattle className];
		NSLog(@"Hi, you are a %@, but I like cattle or bull!", yourClassName);
	}
}


-(void)SELFuncs
{
	[self doWithCattleId:cattle[0] colorParam:@"brown"];
	[self doWithCattleId:cattle[1] colorParam:@"red"];
	[self doWithCattleId:cattle[1] colorParam:@"black"];
	[self doWithCattleId:self colorParam:@"haha"];
}

-(void)functionPointers
{
	setSkinColor_Func = (void (*)(id, SEL, NSString *))[cattle[1] methodForSelector:skin];
	//上面的语句其实等效于下面这种方法
	//IMP setSkinColor_Func = [cattle[1] methodForSelector: skin];

	say_Func = [cattle[1] methodForSelector:say];

	setSkinColor_Func(cattle[1], skin, @"verbos");

	NSLog(@"Running as a function pointer will be more efficiency!");

	say_Func(cattle[1], say);
}

@end

//
//  DoProxy.h
//  tests_class_sel_imp
//
//  Created by 裴超 on 13-5-8.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <Foundation/Foundation.h>

#define SET_SKIN_COLOR @"setSkinColor:"
#define BULL_CLASS @"Bull"
#define CATTLE_CLASS @"Cattle"

@interface DoProxy : NSObject
{
	BOOL notFirstRun;
	
	id cattle[3];
	
	SEL say;
	SEL skin;
	
	void(*setSkinColor_Func)(id, SEL, NSString*);
	
	IMP say_Func;
	
	Class bullClass;
}

-(void) doWithCattleId:(id) aCattle colorParam:(NSString*) color;
-(void) setAllVars;
-(void) SELFuncs;
-(void) functionPointers;

@end

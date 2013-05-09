//
//  Cattle.h
//  tests_class_sel_imp
//
//  Created by 裴超 on 13-5-8.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cattle : NSObject
{
	int legsCount;
}
-(void) saySomething;
-(void) setLegsCount:(int) count;

@end

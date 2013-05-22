//
//  PCBottomTabManager.m
//  SheIsThere
//
//  Created by 裴超 on 13-5-15.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import "PCBottomTabManager.h"

@implementation PCBottomTabManager

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		_tabFindHer = [PCBottomTab new];
		_tabManager = [PCBottomTab new];
		_tabSale = [PCBottomTab new];
		_tabMore = [PCBottomTab new];
		
		
		[self addSubview:_tabFindHer];
		[self addSubview:_tabManager];
		[self addSubview:_tabSale];
		[self addSubview:_tabMore];
		[self addSubview:_sex];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end

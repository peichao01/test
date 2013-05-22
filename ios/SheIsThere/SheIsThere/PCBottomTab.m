//
//  PCBottomTab.m
//  SheIsThere
//
//  Created by 裴超 on 13-5-15.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import "PCBottomTab.h"

@implementation PCBottomTab

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
		_btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        // Initialization code
		[self addSubview:_btn];
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

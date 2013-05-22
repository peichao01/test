//
//  PCPage.m
//  SheIsThere
//
//  Created by 裴超 on 13-5-16.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import "PCPage.h"

@implementation PCPage

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		_tabManager = [PCBottomTabManager new];
		[self addSubview:_tabManager];
		
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

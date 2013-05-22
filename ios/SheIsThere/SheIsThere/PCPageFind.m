//
//  PCPageFind.m
//  SheIsThere
//
//  Created by 裴超 on 13-5-16.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import "PCPageFind.h"

@implementation PCPageFind

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		_label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
		[_label setText:@"PCPageFind"];
		//[_label set`]
		[self addSubview:_label];
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

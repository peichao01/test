//
//  XYPoint.h
//  Command
//
//  Created by 裴超 on 13-5-6.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject
{
    int x;
    int y;
}
@property int x, y;

-(void) setX:(int)xVal andY:(int)yVal;

@end

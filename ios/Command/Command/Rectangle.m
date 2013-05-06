//
//  Rectangle.m
//  Command
//
//  Created by 裴超 on 13-5-6.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

@synthesize width, height;

-(Rectangle *) init
{
    origin = [XYPoint new];
    return [super init];
}

-(void) setWidth:(int)wVal andHeight:(int)hVal
{
    width = wVal;
    height = hVal;
}

-(void) setOrigin:(XYPoint *)pt
{
    origin.x = pt.x;
    origin.y = pt.y;
}

/*-(void) dealloc
{
    //[origin release];
    [super dealloc];
}*/

@end

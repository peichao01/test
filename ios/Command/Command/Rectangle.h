//
//  Rectangle.h
//  Command
//
//  Created by 裴超 on 13-5-6.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"

@interface Rectangle : NSObject
{
    int width, height;
    XYPoint *origin;
}
@property int width, height;

-(Rectangle *) init;
-(void) setWidth:(int)wVal andHeight:(int)hVal;
-(void) setOrigin:(XYPoint *)pt;


@end

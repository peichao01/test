//
//  Complex.h
//  ch9
//
//  Created by 裴超 on 13-5-8.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject
{
	double real;
	double imaginary;
}

@property double real, imaginary;
-(void)		print;
-(void)		setReal:(double)r andImaginary:(double) i;
-(Complex *)	add:(Complex *) f;

@end

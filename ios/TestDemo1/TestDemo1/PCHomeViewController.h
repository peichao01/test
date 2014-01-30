//
//  PCHomeViewController.h
//  TestDemo1
//
//  Created by 裴超 on 13-10-9.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PCSubHomeViewController.h"

@interface PCHomeViewController : UIViewController
{
	NSString *_path;
}

@property(strong,nonatomic)UIButton *button;

@property(strong,nonatomic)UINavigationController *navController;

@property(strong,nonatomic)PCSubHomeViewController *subHomeVC;

@end

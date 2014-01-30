//
//  PCAppDelegate.h
//  TestDemo1
//
//  Created by 裴超 on 13-10-9.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PCLoginViewController.h"
#import "PCHomeViewController.h"

@interface PCAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property(strong,nonatomic)PCLoginViewController *loginVC;
@property(strong,nonatomic)PCHomeViewController *homeVC;


@property(strong,nonatomic)UINavigationController *rootNavController;

@end

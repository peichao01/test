//
//  PCAppDelegate.h
//  UINavigationControllerDemo1
//
//  Created by 裴超 on 13-9-30.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PCRootViewController.h"

@interface PCAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) PCRootViewController *rootVC;
@property (strong, nonatomic) UINavigationController *navController;

@end

//
//  PCAppDelegate.h
//  UITabBarControllerDemo1
//
//  Created by 裴超 on 13-10-11.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PCAppDelegate : UIResponder <UIApplicationDelegate,UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property(strong,nonatomic)UITabBarController *tabBarController;

@end

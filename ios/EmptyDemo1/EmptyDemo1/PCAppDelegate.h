//
//  PCAppDelegate.h
//  EmptyDemo1
//
//  Created by 裴超 on 13-10-4.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PCLoginViewController.h"

@interface PCAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property(strong,nonatomic) PCLoginViewController *loginVC;

@end

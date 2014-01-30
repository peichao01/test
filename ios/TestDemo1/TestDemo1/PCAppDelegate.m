//
//  PCAppDelegate.m
//  TestDemo1
//
//  Created by 裴超 on 13-10-9.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import "PCAppDelegate.h"

@implementation PCAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
	
	self.rootNavController = [[UINavigationController alloc] init];
	self.rootNavController.navigationBarHidden = YES;
	
	self.loginVC = [[PCLoginViewController alloc] init];
	[self.rootNavController pushViewController:self.loginVC animated:NO];
	
	
	SEL onLoginVCButtonClickSEL = @selector(onLoginVCButtonClick:);
	[self.loginVC.button addTarget:self action:onLoginVCButtonClickSEL forControlEvents:UIControlEventTouchUpInside];
	
	//[self.window addSubview:self.rootNavController.view];
	self.window.rootViewController = self.rootNavController;
    [self.window makeKeyAndVisible];
    return YES;
}

-(void)onLoginVCButtonClick:(id)sender
{
	//[self.rootNavController popViewControllerAnimated:NO];
	
	self.homeVC = [[PCHomeViewController alloc] init];
	[self.rootNavController pushViewController:self.homeVC animated:NO];
	
	//[self.homeVC.navigationItem setHidesBackButton:YES animated:NO];
	//self.rootNavController.navigationBarHidden = NO;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
	// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
	// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
	// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
	// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
	// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

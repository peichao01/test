//
//  PCViewController.h
//  SQLite3Demo1
//
//  Created by 裴超 on 13-10-12.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PCViewController : UIViewController

@property(strong,nonatomic)NSString *databaseFilePath;

-(void)applicationWillResignActive:(NSNotification *)notification;

-(IBAction)backgroundTapped:(id)sender;

@end

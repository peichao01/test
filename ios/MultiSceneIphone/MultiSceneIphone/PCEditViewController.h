//
//  PCEditViewController.h
//  MultiSceneIphone
//
//  Created by 裴超 on 13-5-24.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PCViewController.h"

@interface PCEditViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *input;
@property (nonatomic, retain) NSString *generalViewText;

- (IBAction)backGeneralView:(id)sender;
- (IBAction)hideKeyboard:(id)sender;
@end

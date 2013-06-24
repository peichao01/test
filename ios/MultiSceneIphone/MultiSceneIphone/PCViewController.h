//
//  PCViewController.h
//  MultiSceneIphone
//
//  Created by 裴超 on 13-5-24.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PCViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UITextField *input;

- (IBAction)segueToEdit:(id)sender;
- (IBAction)hideKeyboard:(id)sender;
@end

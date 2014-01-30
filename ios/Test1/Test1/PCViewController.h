//
//  PCViewController.h
//  Test1
//
//  Created by 裴超 on 13-9-26.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PCViewController : UIViewController <UITextFieldDelegate, UIAlertViewDelegate>

@property (strong, nonatomic) IBOutlet UITextField *mytext;
@property (strong, nonatomic) IBOutlet UILabel *labelHelloWorld;
- (IBAction)doBtnHide:(id)sender;
@end

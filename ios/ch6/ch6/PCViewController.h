//
//  PCViewController.h
//  ch6
//
//  Created by 裴超 on 13-5-18.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PCViewController : UIViewController

/*
@property(strong, nonatomic) IBOutlet UILabel *helloLabel;
@property(strong, nonatomic) IBOutlet UILabel *nameLabel;
@property(strong, nonatomic) IBOutlet UITextField *nameInput;
@property(strong, nonatomic) IBOutlet UIButton *showNameBtn;

-(IBAction)showName:(id)sender;
*/
@property (weak, nonatomic) IBOutlet UITextField *userInput;
@property (weak, nonatomic) IBOutlet UILabel *userOutput;
@property (weak, nonatomic) IBOutlet UIButton *userSetName;

- (IBAction)setName:(id)sender;
- (IBAction)userInputDidEndOnExit:(id)sender;
 
@end

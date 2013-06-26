//
//  PCViewController.h
//  FlowerWeb
//
//  Created by 裴超 on 13-5-23.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PCViewController : UIViewController
@property (strong, nonatomic) IBOutlet UISegmentedControl *colorChoice;
@property (strong, nonatomic) IBOutlet UIWebView *flowerView;
@property (strong, nonatomic) IBOutlet UIWebView *flowerDetailView;
@property (strong, nonatomic) IBOutlet UISwitch *switchDetail;

- (IBAction)getFlower:(id)sender;
- (IBAction)toggleFlowerDetail:(id)sender;
@end

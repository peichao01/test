//
//  PCDetailViewController.h
//  MasterDetailDemo
//
//  Created by 裴超 on 13-9-28.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PCDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end

//
//  PCViewController.h
//  TableViewDemo
//
//  Created by 裴超 on 13-9-27.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PCViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property(nonatomic, strong) NSDictionary *films;
@property(nonatomic, strong) NSArray *filmKeys;

@property(nonatomic,strong)NSDictionary *actors;
@property(nonatomic,strong)NSArray *actorKeys;

@property(nonatomic, strong) UITableView *myTableView;

@end

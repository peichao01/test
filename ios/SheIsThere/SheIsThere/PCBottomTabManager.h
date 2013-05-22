//
//  PCBottomTabManager.h
//  SheIsThere
//
//  Created by 裴超 on 13-5-15.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PCBottomTab.h"

@interface PCBottomTabManager : UIView

@property(nonatomic, retain) PCBottomTab *tabFindHer, *tabManager, *tabSale, *tabMore;
@property(nonatomic, retain) UISwitch *sex;

@end

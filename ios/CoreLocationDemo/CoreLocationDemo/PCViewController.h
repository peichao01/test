//
//  PCViewController.h
//  CoreLocationDemo
//
//  Created by 裴超 on 13-10-14.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface PCViewController : UIViewController<CLLocationManagerDelegate>
{
	CLLocationManager *locManager;
}

@property(retain,nonatomic)IBOutlet UILabel *lonLabel;
@property(retain,nonatomic)IBOutlet UILabel *latLabel;
@property(retain,nonatomic)CLLocationManager *locManager;

@end

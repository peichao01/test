//
//  PCViewController.m
//  CoreLocationDemo
//
//  Created by 裴超 on 13-10-14.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import "PCViewController.h"

@interface PCViewController ()

@end

@implementation PCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	locManager = [[CLLocationManager alloc] init];
	locManager.delegate = self;
	
	locManager.desiredAccuracy = kCLLocationAccuracyBest;
	locManager.distanceFilter = 100;
	[locManager startUpdatingLocation];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
	//NSLog(@"%d", locations.count);
	//CLLocationCoordinate2D loc = locations
	CLLocation location = [locations objectAtIndex:0];
	CLLocationCoordinate2D loc = [location coordinate];
}

-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
	NSString *errorMsg = nil;
	if ([error code] == kCLErrorDenied) {
		errorMsg = @"访问被拒绝";
	}
	if ([error code] == kCLErrorLocationUnknown) {
		errorMsg = @"获取位置信息失败";
	}
	
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Location" message:errorMsg delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
	
	[alert show];
}

@end

//
//  PCViewController.m
//  ImageHop
//
//  Created by 裴超 on 13-5-22.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import "PCViewController.h"

@interface PCViewController ()

@end

@implementation PCViewController

- (void)viewDidLoad
{
	self.rabbitArray = @[
			[UIImage imageNamed:@"rabbit_run_1.png"],
			[UIImage imageNamed:@"rabbit_run_2.png"],
			[UIImage imageNamed:@"rabbit_run_3.png"],
			[UIImage imageNamed:@"rabbit_run_4.png"],
			[UIImage imageNamed:@"rabbit_run_5.png"],
			[UIImage imageNamed:@"rabbit_run_6.png"],
			[UIImage imageNamed:@"rabbit_run_7.png"],
			[UIImage imageNamed:@"rabbit_run_8.png"],
		];
	self.bunnyView.animationImages = self.rabbitArray;
	self.bunnyView.animationDuration = [self getDurationByFPS:12.0];//(1/16);
	
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)toggleAnimation:(id)sender {
	if(self.bunnyView.isAnimating){
		[self.bunnyView stopAnimating];
		[self.toggleButton setTitle:@"start" forState:UIControlStateNormal];
	}else{
		[self.bunnyView startAnimating];
		[self.toggleButton setTitle:@"stop" forState:UIControlStateNormal];
	}
}

- (IBAction)setSpeed:(id)sender {
	float fps = self.speedSlider.value;
	self.bunnyView.animationDuration = [self getDurationByFPS:fps];
	[self.bunnyView startAnimating];
	[self.toggleButton setTitle:@"stop" forState:UIControlStateNormal];
	self.fpsLabel.text = [NSString stringWithFormat:@"%1.2f", fps];
}

- (IBAction)setIncrement:(id)sender {
	self.speedSlider.value = self.speedStepper.value;
	[self setSpeed:nil];
}

- (float)getDurationByFPS:(float)fps {
	return [self.rabbitArray count]  / fps;
}
@end

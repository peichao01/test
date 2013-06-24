//
//  PCViewController.h
//  ImageHop
//
//  Created by 裴超 on 13-5-22.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PCViewController : UIViewController

@property (nonatomic, retain) NSArray *rabbitArray;

@property (strong, nonatomic) IBOutlet UIImageView *bunnyView;
@property (strong, nonatomic) IBOutlet UISlider *speedSlider;
@property (strong, nonatomic) IBOutlet UIStepper *speedStepper;
@property (strong, nonatomic) IBOutlet UILabel *fpsLabel;
@property (strong, nonatomic) IBOutlet UIButton *toggleButton;

- (IBAction)toggleAnimation:(id)sender;
- (IBAction)setSpeed:(id)sender;
- (IBAction)setIncrement:(id)sender;

//- (float )getDurationByFPS:(float )fps;
@end

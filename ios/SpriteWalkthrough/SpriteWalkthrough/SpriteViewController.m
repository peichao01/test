//
//  SpriteViewController.m
//  SpriteWalkthrough
//
//  Created by 裴超 on 14-1-28.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#import "SpriteViewController.h"
#import <SpriteKit/SpriteKit.h>
//#import "HelloScene.h"
#import "SpriteLearningScene.h"

@interface SpriteViewController ()

@end

@implementation SpriteViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	SKView* spriteView = (SKView*) self.view;
	spriteView.showsDrawCount = YES;
	spriteView.showsNodeCount = YES;
	spriteView.showsFPS = YES;
}

-(void)viewWillAppear:(BOOL)animated
{
	//HelloScene* hello = [[HelloScene alloc] initWithSize:CGSizeMake(768, 1024)];
	
	SpriteLearningScene* scene = [[SpriteLearningScene alloc] initWithSize:self.view.frame.size];
	
	SKView* spriteView = (SKView*) self.view;
	//[spriteView presentScene:hello];
	[spriteView presentScene:scene];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

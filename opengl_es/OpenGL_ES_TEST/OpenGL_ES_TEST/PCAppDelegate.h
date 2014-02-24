//
//  PCAppDelegate.h
//  OpenGL_ES_TEST
//
//  Created by 裴超 on 14-2-18.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PCOpenGLView.h"

@interface PCAppDelegate : UIResponder <UIApplicationDelegate> {
	PCOpenGLView* _glView;
}

@property (strong, nonatomic) UIWindow *window;

@property(nonatomic, retain) IBOutlet PCOpenGLView* glView;

@end

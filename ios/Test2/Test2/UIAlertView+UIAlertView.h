//
//  UIAlertView+UIAlertView.h
//  Test2
//
//  Created by 裴超 on 14-1-19.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^DismissBlock)(int buttonIndex);
typedef void (^CancelBlock)();

@interface UIAlertView (UIAlertView) <UIAlertViewDelegate>

+ (UIAlertView *) showAlertViewWithTitle:(NSString*) title
								 message:(NSString*) message
					   cancelButtonTitle:(NSString*) cancelButtonTitle
						otherButtonTitles:(NSArray*) otherButtons
							   onDismiss:(DismissBlock) dismissed
								onCancel:(CancelBlock) canceled;
@end

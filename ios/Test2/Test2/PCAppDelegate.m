//
//  PCAppDelegate.m
//  Test2
//
//  Created by 裴超 on 14-1-19.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#import "PCAppDelegate.h"

#import "UIAlertView+UIAlertView.h"

@implementation PCAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
//    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//    // Override point for customization after application launch.
//    self.window.backgroundColor = [UIColor whiteColor];
//    [self.window makeKeyAndVisible];
	
	//NSLog(@"%@", @"shit");
	
//	int multiplier = 7;
//	int (^myBlock)(int) = ^(int num){return num * multiplier;};
//	int result = myBlock(4);
//	NSLog(@"%d", result);
//	
//	void (^printBlock)(NSString *);
//	printBlock = ^(NSString * str){
//		NSLog(@"print:%@", str);
//	};
//	printBlock(@"hello world!");
//	
//	NSArray *stringArray = [NSArray arrayWithObjects:@"abc 1", @"abc 21", @"abc 12", @"abc 13", @"abc 05", nil];
//	NSArray *stringArr = @[@"abc1", @"abc 21", @"abc 12"];
//	NSComparator sortBlock = ^(id string1, id string2)
//	{
//		return [string1 compare:string2];
//	};
//	NSArray *sortArray = [stringArray sortedArrayUsingComparator:sortBlock];
//	NSArray *sortArr = [stringArr sortedArrayUsingComparator:^(id str1, id str2){
//		return [str1 compare:str2];
//	}];
//	
//	NSLog(@"sortArray: %@", sortArray);
//	NSLog(@"sortArr: %@", sortArr);
//	
//	static void (^const blocks)(int) = ^(int i)
//	{
//		if(i>0){
//			NSLog(@"num: %d", i);
//			blocks(i - 1);
//		}
//	};
//	blocks(3);
//	
//	__block int local = 500;
//	void(^block)(void) = ^(void)
//	{
//		local++;
//		NSLog(@"local: %d", local);
//	};
//	NSLog(@"local: %d",local);
//	block();
	
//	typedef int (^MyBlock)(int parameter1, double parameter2);
//	
//	MyBlock firstBlock, secondBlock;
//	
//	firstBlock = ^(int parameter1, double parameter2)
//	{
//		NSLog(@"%d, %f", parameter1, parameter2);
//		return parameter1;
//	};
//	
//	firstBlock(5, 2.3);
	
	//----------------- 分割线 ------------------------
//	[UIAlertView showAlertViewWithTitle:@"Title"
//								message:@"this is the message"
//					  cancelButtonTitle:@"cancel button"
//					  otherButtonTitles:@[@"other1", @"other2"]
//							  onDismiss:^(int buttonIndex){
//								  NSLog(@"%d", buttonIndex);
//								  NSLog(@"%@",@"dismissed");
//							  }
//							   onCancel:^{
//								   NSLog(@"%@", @"canceled");
//							   }];
	//----------------- 分割线 ------------------------
//	
//	NSArray* keys = @[@"name",@"sex",@"age"];
//	NSDictionary* myInfo2 = @{@"name": @"chao2",@"sex":@"male",@"age":@26};
//	//traditional form
//	NSString* keyForName = [keys objectAtIndex:0];
//	NSString* name = [myInfo2 objectForKey:keyForName];
//	NSLog(@"key for name: %@", keyForName);
//	NSLog(@"name: %@", name);
//	//with the new
//	NSString* keyForSex = keys[1];
//	NSString* sex = myInfo2[keyForSex];
//	NSLog(@"key for sex: %@", keyForSex);
//	NSLog(@"sex: %@", sex);
	//----------------- 分割线 ------------------------
	
//	NSMutableArray* array = [@[@"apple",@"ab",@"aa",@"aac",@"appd"] mutableCopy];
//	[array sortUsingComparator:^(__strong id o1, __strong id o2){
//		NSString* s1 = (NSString*) o1;
//		NSString* s2 = (NSString*) o2;
//		return [s1 compare:s2];
//	}];
//	NSLog(@"array = %@",array);
//	
//	NSNumber* age = [NSNumber numberWithInt:51];
//	NSDictionary* dic = [[NSDictionary alloc] initWithObjectsAndKeys:@"Anthony",@"FirstName",@"Robbin",@"LastName",age,@"age",nil];
//	[dic enumerateKeysAndObjectsUsingBlock:^(__strong id key, __strong id value, BOOL *stop){
//		NSLog(@"key = %@, Value For Key = %@", key, value);
//	}];
//	
//	NSEnumerator* keys = [dic keyEnumerator];
//	id keyInDic = nil;
//	while ((keyInDic = [keys nextObject]) != nil) {
//		id valueForKey = [dic objectForKey:keyInDic];
//		NSLog(@"key = %@, ValueForKey = %@", keyInDic, valueForKey);
//	}
//	
//	NSMutableSet* set = [[NSMutableSet alloc] initWithObjects:@"li",@"san",@"zhang",@"san", nil];
//	NSLog(@"%@", set);
//	
//	[set removeObject:@"san"];
//	NSLog(@"%@", set);
//	
//	[set addObject:@"san"];
//	NSLog(@"%@", set);
//	
//	[set addObjectsFromArray:@[@"a",@"b"]];
//	NSLog(@"%@", set);
//	
//	[set enumerateObjectsUsingBlock:^(__strong id o1, BOOL* stop)
//	{
//		if([o1 isKindOfClass:[NSString class]])
//		{
//			NSString* str = (NSString*) o1;
//		}
//	}];
	
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
	// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
	// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
	// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
	// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
	// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

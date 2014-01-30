//
//  PCViewController.m
//  TableViewDemo
//
//  Created by 裴超 on 13-9-27.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import "PCViewController.h"

@interface PCViewController ()

@end

@implementation PCViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	if(0 == section){
		return [_films count];
	}
	else if(1 == section){
		return [_actors count];
	}
	
	return 0;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	NSString *cellId = @"cell";
	
//	UITableViewCell *cell = [UITableViewCell new];
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
	
	if(nil == cell)
	{
		//cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellId];
	}

	NSString *text;
	NSString *subTitle;
	if (0 == indexPath.section) {
		NSString *key = [_filmKeys objectAtIndex:[indexPath row]];
		subTitle = [_films objectForKey:key];
		//text = [NSString stringWithFormat:@"%@ - %@", key, subTitle];
		text = key;
	}
	else if(1 == indexPath.section){
		NSString *key = [_actorKeys objectAtIndex:[indexPath row]];
		subTitle = [_actors objectForKey:key];
		//text = [NSString stringWithFormat:@"%@ - %@", key, subTitle];
		text = key;
	}
	else{
		text = @"unknown";
		subTitle = @"unknown";
	}
	

	[[cell textLabel] setText:text];
	[[cell detailTextLabel] setText:subTitle];
	
	cell.accessoryType = UITableViewCellAccessoryNone;
	
	//NSLog(@"%@", text);
	
	return cell;
}

// title for each section
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
	if(0 == section){
		return @"film director";
	}
	else if(1 == section){
		return @"film actor";
	}
	return @"unknown";
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	int sectionIndex = indexPath.section;
	int rowIndex = indexPath.row;
	NSDictionary *dict = (sectionIndex == 0 ? _films : _actors);
	NSArray *keys = [dict allKeys];
	NSString *key = [keys objectAtIndex:rowIndex];
	NSString *text = [dict objectForKey:key];
	
	//NSLog(@"%i", sectionIndex);
	//NSLog(@"%i", rowIndex);
	//NSLog(@"%@", dict);
	
	UIAlertView *alert = [UIAlertView new];
	[alert setTitle:key];
	[alert setMessage:text];
	[alert setDelegate:self];
	[alert addButtonWithTitle:@"ok"];
	[alert show];
}

- (void)viewDidLoad
{
	NSString *filePath = [[NSBundle mainBundle] pathForResource:@"books_film" ofType:@"plist"];
	
	_films = [[NSDictionary alloc] initWithContentsOfFile:filePath];
	_filmKeys = [_films allKeys];
	
	NSString *actorFilePath = [[NSBundle mainBundle] pathForResource:@"books_actor" ofType:@"plist"];
	_actors = [[NSDictionary alloc] initWithContentsOfFile:actorFilePath];
	_actorKeys = [_actors allKeys];
	
	//NSLog(@"%@", filePath);
//	NSLog(@"%@", [_filmKeys objectAtIndex:0]);
	
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	CGSize screenSize = [[UIScreen mainScreen] bounds].size;
	
	//_myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, screenSize.width, screenSize.height) style:UITableViewStylePlain];
	_myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, screenSize.width, screenSize.height) style:UITableViewStyleGrouped];
	[_myTableView setDataSource: self];
	[_myTableView setDelegate: self];
	[self.view addSubview:_myTableView];
	
	//SEL onOrientationChangeSelector = sel_registerName("onOrientationChange:");
	//[[NSNotificationCenter defaultCenter] addObserver:self selector:onOrientationChangeSelector name:UIDeviceOrientationDidChangeNotification object:nil];
}

-(void)onOrientationChange:(NSNotification *) notification
{
	NSLog(@"change notification:%@", notification.userInfo);
	
	UIScreen *screen = [UIScreen mainScreen];
	float screenScal = [screen scale];
	CGSize screenSize = [screen bounds].size;
	
	float width = screenSize.width * screenScal;
	float height = screenSize.height * screenScal;
	
	if([[UIDevice currentDevice]orientation] == UIInterfaceOrientationPortrait
	   || [[UIDevice currentDevice] orientation] == UIInterfaceOrientationPortraitUpsideDown)
	{
		NSLog(@">>>portrait");
		self.view.frame = CGRectMake(0, 0, height, width);
	}
	else
	{
		NSLog(@">>>landscape");
		self.view.frame = CGRectMake(0, 0, width, height);
	}
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  PCViewController.m
//  SQLite3Demo1
//
//  Created by 裴超 on 13-10-12.
//  Copyright (c) 2013年 裴超. All rights reserved.
//

#import "PCViewController.h"
#import "sqlite3.h"

#define kDatabaseName @"database.sqlite3"

@interface PCViewController ()

@end

@implementation PCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *documentDirectory = [path objectAtIndex:0];
	
	self.databaseFilePath = [documentDirectory stringByAppendingPathComponent:kDatabaseName];
	
	sqlite3 *database;
	if (sqlite3_open([self.databaseFilePath UTF8String], &database) != SQLITE_OK) {
		sqlite3_close(database);
		NSAssert(0, @"数据库打开失败");
	}
	
	NSString *createSql = @"CREATE TABLE IF NOT EXISTS STUDENT (TAG INTEGER PRIMARY KEY, FIELD_DATA TEXT);";
	
	char *errorMsg;
	
	if (sqlite3_exec(database, [createSql UTF8String], NULL, NULL, &errorMsg) != SQLITE_OK) {
		sqlite3_close(database);
		NSAssert(0, @"创建表错误：%s", errorMsg);
	}
	
	NSString *querySql = @"SELECT * FROM STUDENT ORDER BY TAG";
	sqlite3_stmt *statement;
	if (sqlite3_prepare_v2(database, [querySql UTF8String], -1, &statement, nil) == SQLITE_OK) {
		while (sqlite3_step(statement) == SQLITE_ROW) {
			
		}
	}
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

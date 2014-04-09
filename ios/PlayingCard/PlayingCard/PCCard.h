//
//  PCCard.h
//  PlayingCard
//
//  Created by 裴超 on 14-3-13.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

//#import <Foundation/Foundation.h>
@import Foundation;

@interface PCCard : NSObject

@property (strong, nonatomic) NSString* contents;

@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

-(int) match:(NSArray*)otherCards;

@end

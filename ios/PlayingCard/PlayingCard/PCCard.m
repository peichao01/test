//
//  PCCard.m
//  PlayingCard
//
//  Created by 裴超 on 14-3-13.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#import "PCCard.h"

@interface PCCard()

@end

@implementation PCCard

-(int) match:(NSArray *)otherCards
{
	int score = 0;
	
	for (PCCard* card in otherCards) {
		if ([card.contents isEqualToString:self.contents]) {
			score += 1;
		}
	}
	
	return score;
}

@end

//
//  SpriteLearningScene.m
//  SpriteWalkthrough
//
//  Created by 裴超 on 14-1-30.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#import "SpriteLearningScene.h"

@implementation SpriteLearningScene

-(void)didMoveToView:(SKView *)view
{
//	SKAction* pulseRed = [SKAction sequence:@[
//											  [SKAction colorizeWithColor:[SKColor redColor] colorBlendFactor:1.0 duration:0.15],
//											  [SKAction waitForDuration:0.1],
//											  [SKAction colorizeWithColorBlendFactor:0.0 duration:0.15]
//											  ]];
//	
//	SKSpriteNode* spaceship = [SKSpriteNode spriteNodeWithImageNamed:@"rocket.png"];
//	//NSLog(@"x: %.2f, y: %.2f",spaceship.anchorPoint.x, spaceship.anchorPoint.y);
//	spaceship.anchorPoint = CGPointMake(0, 0);
//	spaceship.position = CGPointMake(0, 0);
//	spaceship.color = [SKColor redColor];
//	spaceship.colorBlendFactor = 0.4;
//	
//	[spaceship runAction:[SKAction repeatActionForever:pulseRed]];
//	
//	[self addChild:spaceship];
	
	SKTexture* rocketTexture = [SKTexture textureWithImageNamed:@"rocket.png"];
	for (int i=0; i<10; i++) {
		SKSpriteNode* rocket = [SKSpriteNode spriteNodeWithTexture:rocketTexture];
		rocket.position = [self randomRocketLocation];
		[self addChild:rocket];
	}
	
	SKSpriteNode* circle = [SKSpriteNode spriteNodeWithImageNamed:@"circle.png"];
	circle.anchorPoint = CGPointMake(0, 0);
	circle.position = CGPointMake(150, 150);
	circle.xScale = 2.0;
	circle.yScale = 0.5;
	NSLog(@"width: %.2f, height: %.2f", circle.size.width, circle.size.height);
	[self addChild:circle];
	
	SKSpriteNode* button = [SKSpriteNode spriteNodeWithImageNamed:@"stretchable_button.png"];
	button.anchorPoint = CGPointMake(1, 1);
	button.position = CGPointMake(self.frame.size.width - 200, self.frame.size.height - 200);
	button.centerRect = CGRectMake(0.3, 0.3, 0.4, 0.4);
	//button.xScale = 4;
	button.yScale = 4;
	[self addChild:button];
	
	SKTextureAtlas* monsterAtlas = [SKTextureAtlas atlasNamed:@"monster"];
	SKTexture* m1 = [monsterAtlas textureNamed:@"monster-walk-1.png"];
	SKTexture* m2 = [monsterAtlas textureNamed:@"monster-walk-2.png"];
	SKTexture* m3 = [monsterAtlas textureNamed:@"monster-walk-3.png"];
	SKTexture* m4 = [monsterAtlas textureNamed:@"monster-walk-4.png"];
	SKTexture* m5 = [monsterAtlas textureNamed:@"monster-walk-5.png"];
	//NSArray* monsterWalkTextures1 = @[m1, m2, m3, m4, m5];
	NSArray* monsterWalkTextures2 = [monsterAtlas textureNames];
	//NSLog(@"monsterWalkTextures1: %@", monsterWalkTextures1);
	NSLog(@"monsterWalkTextures2: %@", monsterWalkTextures2);
}

-(CGPoint)randomRocketLocation
{
	CGSize size = self.view.frame.size;
	float x = rand() / (float)RAND_MAX * size.width;
	float y = rand() / (float)RAND_MAX * size.height;
	CGPoint point = CGPointMake(x, y);
	NSLog(@"x: %.2f, y: %.2f", x, y);
	return point;
}

@end

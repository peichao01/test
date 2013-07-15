//
//  EaseLayer.cpp
//  TestActioin
//
//  Created by 裴超 on 13-7-14.
//
//

#include "EaseLayer.h"

using namespace cocos2d;

bool EaseLayer::init(){
	if(!CCLayer::init()){
		return false;
	}
	
	CCSize size = CCDirector::sharedDirector()->getWinSize();
	
	CCSprite* spriteTop = CCSprite::create("Icon@2x.png");
	CCSprite* spriteMiddle = CCSprite::create("Icon@2x.png");
	CCSprite* spriteBottom = CCSprite::create("Icon@2x.png");
	
	spriteTop->setAnchorPoint(ccp(0.5, 1));
	//spriteMiddle->setAnchorPoint(ccp(0.5, 0.5));
	spriteBottom->setAnchorPoint(ccp(0.5, 0));
	
	spriteTop->setPosition(ccp(0, size.height));
	spriteMiddle->setPosition(ccp(0, size.height/2));
	spriteBottom->setPosition(ccp(0, 0));
	
	this->addChild(spriteTop);
	this->addChild(spriteMiddle);
	this->addChild(spriteBottom);
	
	
	CCMoveBy* moveBy = CCMoveBy::create(5.0f, ccp(size.width, 0));
	
	CCEaseIn* easeInRate3 = CCEaseIn::create(moveBy, 3.0f);
	CCEaseIn* easeInRate1 = CCEaseIn::create((CCMoveBy*)moveBy->copy()->autorelease(), 1.0f);
	CCEaseSineIn* easeSineIn = CCEaseSineIn::create(moveBy);
	
	/*
	spriteTop->runAction(easeInRate1);
	spriteMiddle->runAction((CCMoveBy*)moveBy->copy()->autorelease());
	spriteBottom->runAction(easeInRate3);
	 */
	spriteTop->runAction(easeSineIn);
	
	return true;
}
//
//  HelloEffect.cpp
//  cocos2d_test2
//
//  Created by 裴超 on 13-7-4.
//
//

#include "HelloEffect.h"

using namespace cocos2d;
//using namespace CocosDenshion;


CCScene* HelloEffect::scene(){
	CCScene* scene = CCScene::create();
	
	HelloEffect* layer = HelloEffect::create();
	scene->addChild(layer);
	
	return scene;
}

bool HelloEffect::init(){
	if (!CCLayer::init()) {
		return false;
	}
	
	//CCSprite* naruto = CCSprite::create("naruto.jpg");
	//naruto->runAction(CCLiquid::create(4, 20, ccg, 5));
	
	return true;
}

void HelloEffect::menuCloseCallback(CCObject* pSender){
	CCDirector::sharedDirector()->end();
	exit(0);
}
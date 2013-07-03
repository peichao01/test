//
//  Test2Scene.cpp
//  cocos2d_test2
//
//  Created by 裴超 on 13-7-3.
//
//

#include "Test1Scene.h"
#include "SimpleAudioEngine.h"

using namespace cocos2d;
using namespace CocosDenshion;

CCScene* Test1Scene::scene()
{
	CCScene* scene = CCScene::create();
	
	Test1Scene* layer = Test1Scene::create();
	
	scene->addChild(layer);
	
	return scene;
}

bool Test1Scene::init()
{
	if (!CCLayer::init()) {
		return false;
	}
	
	CCMenuItemImage* pCloseItem = CCMenuItemImage::create(
														  "CloseNormal.png",
														  "CloseSelected.png",
														  this,
														  menu_selector(Test1Scene::menuCloseCallback));
	pCloseItem->setPosition(ccp(CCDirector::sharedDirector()->getWinSize().width - 20, 20));
	
	CCMenu* pMenu = CCMenu::create(pCloseItem, NULL);
	pMenu->setPosition(CCPointZero);
	this->addChild(pMenu, 1);
	
	CCSprite* sprite1 = CCSprite::create("CloseNormal.png");
	sprite1->setPosition(ccp(20, 40));
	sprite1->setAnchorPoint(ccp(0, 0));
	this->addChild(sprite1);
	
	CCSprite *sprite2 = CCSprite::create("CloseNormal.png");
	sprite2->setPosition(ccp(-5, -20));
	sprite2->setAnchorPoint(ccp(0.5, 0.5));
	this->addChild(sprite2);
	
	CCPoint point1 = sprite1->convertToNodeSpace(sprite2->getPosition());
	CCPoint point2 = sprite1->convertToWorldSpace(sprite2->getPosition());
	CCPoint point3 = sprite1->convertToNodeSpaceAR(sprite2->getPosition());
	CCPoint point4 = sprite1->convertToWorldSpaceAR(sprite2->getPosition());
	
	CCLog("positon = (%f, %f)", point1.x, point1.y);
	CCLog("positon = (%f, %f)", point2.x, point2.y);
	CCLog("positon = (%f, %f)", point3.x, point3.y);
	CCLog("positon = (%f, %f)", point4.x, point4.y);
	
	return true;
}

void Test1Scene::menuCloseCallback(CCObject* pSender)
{
	CCDirector::sharedDirector()->end();
	exit(0);
}
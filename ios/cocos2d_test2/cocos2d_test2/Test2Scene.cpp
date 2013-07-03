//
//  Test2Scene.cpp
//  cocos2d_test2
//
//  Created by 裴超 on 13-7-3.
//
//

#include "Test2Scene.h"
#include "SimpleAudioEngine.h"

using namespace cocos2d;
using namespace CocosDenshion;

CCScene* Test2Scene::scene()
{
	CCScene* scene = CCScene::create();
	
	Test2Scene* layer = Test2Scene::create();
	
	scene->addChild(layer);
	
	return scene;
}

bool Test2Scene::init()
{
	if (!CCLayer::init()) {
		return false;
	}
	
	CCMenuItemImage* pCloseItem = CCMenuItemImage::create(
										"CloseNormal.png",
										"CloseSelected.png",
										this,
										menu_selector(Test2Scene::menuCloseCallback));
	pCloseItem->setPosition(ccp(CCDirector::sharedDirector()->getWinSize().width - 20, 20));
	
	CCMenu* pMenu = CCMenu::create(pCloseItem, NULL);
	pMenu->setPosition(CCPointZero);
	this->addChild(pMenu, 1);
	
	CCSprite* parent = CCSprite::create("parent.png");
	parent->setAnchorPoint(ccp(0, 0));
	parent->setPosition(ccp(100, 100));
	CCSize sizeParent = parent->getContentSize();
	//parent->setAnchorPoint(ccp(0, 0));
	addChild(parent);
	
	CCSprite* child = CCSprite::create("child.png");
	//ancher 是按照 百分比 来计算的
	child->setAnchorPoint(ccp(0, 0));
	child->setPosition(ccp(40, 40));
	CCSize sizeChild = child->getContentSize();
	parent->addChild(child);
	
	CCLog("parent size = (%f, %f)", sizeParent.width, sizeParent.height);
	CCLog("child size = (%f, %f)", sizeChild.width, sizeChild.height);
	
	CCPoint point = parent->convertToNodeSpace(child->getPosition());
	//CCLabelTTF* pLable = CCLabelTTF::create(point.x, "", 20);
	CCLog("nodespace position = (%f, %f)[parent convert child]", point.x, point.y);
	
	CCPoint point4 = child->convertToNodeSpace(parent->getPosition());
	CCLog("nodespace position = (%f, %f)[child convert parent]", point4.x, point4.y);
	
	CCPoint point2 = parent->convertToWorldSpace(child->getPosition());
	CCLog("worldspace position = (%f, %f)[parent convert child]", point2.x, point2.y);
	
	CCPoint point3 = child->convertToWorldSpace(child->getPosition());
	CCLog("worldspace position = (%f, %f)[child convert child]", point3.x, point3.y);
	
	return true;
}

void Test2Scene::menuCloseCallback(CCObject* pSender)
{
	CCDirector::sharedDirector()->end();
	exit(0);
}
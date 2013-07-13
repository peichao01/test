//
//  Scene1Welcome.cpp
//  RussiaBlock
//
//  Created by 裴超 on 13-7-12.
//
//

#include "Scene1Welcome.h"
#include "MainMenu.h"

using namespace cocos2d;

bool Scene1Welcome::init(){
	
	if(!CCScene::init()){
		return false;
	}
	
	CCSize size = CCDirector::sharedDirector()->getWinSize();
	
	CCSprite* pBg = CCSprite::create("welcome_bg@2x.png");
	pBg->setPosition(ccp(size.width/2, size.height/2));
	
	CCLayer* layerBtns = CCLayer::create();
	
	this->addChild(pBg);
	this->addChild(layerBtns);
	
	CCSprite* pLogo = CCSprite::create("logo.png");
	pLogo->setAnchorPoint(ccp(0.5, 1));
	pLogo->setPosition(ccp(size.width/2, size.height-150));
	layerBtns->addChild(pLogo);
	
	
	CCSprite* spriteBtnPlay = CCSprite::create("btn_play.png");
	CCSprite* spriteBtnPlaySelected = CCSprite::create("btn_play_selected.png");
	CCMenuItemSprite* menuBtnPlay = CCMenuItemSprite::create(spriteBtnPlay,
															 spriteBtnPlaySelected,
															 this,
															 menu_selector(Scene1Welcome::onBtnPlayClick));
	menuBtnPlay->setPosition(ccp(0.5, 1));
	menuBtnPlay->setPosition(ccp(size.width/2, size.height-420));
	//CCLog("%f", size.height);
	
	MainMenu* mainMenu = new MainMenu();
	
	//layerBtns->addChild(pBtnPlay);
	//layerBtns->addChild(spriteBtnMain);
	
	
	CCMenu* pMenu = CCMenu::create(menuBtnPlay, NULL);
	pMenu->setPosition(CCPointZero);
	layerBtns->addChild(pMenu);
	//layerBtns->addChild(mainMenu->pMenu);
	//mainMenu->showWithAnimate();
	
	//CCActionInterval* actionInterval = CCActionInterval::create(5);
	//CCEaseBackInOut* easeBackInOut = CCEaseBackInOut::create(actionInterval);
	
	//pLogo->runAction(easeBackInOut);
	
	return true;
}

Scene1Welcome* Scene1Welcome::scene(){
	Scene1Welcome* sc = new Scene1Welcome();
	
	if(sc->init()){
		sc->autorelease();
		return sc;
	}
	
	return NULL;
}

void Scene1Welcome::onBtnPlayClick(CCObject* pSender){
	
}

void Scene1Welcome::onBtnMainClick(CCObject *pSender){
	
}
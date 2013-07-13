//
//  MainMenu.cpp
//  RussiaBlock
//
//  Created by 裴超 on 13-7-13.
//
//

#include "MainMenu.h"

using namespace cocos2d;

MainMenu::MainMenu(){
	CCSprite* spriteBtnMain = CCSprite::create("menu_main.png");
	CCSprite* spriteBtnMainSelected = CCSprite::create("menu_main_selected.png");
	
	CCMenuItemSprite* menuBtnMain = CCMenuItemSprite::create(spriteBtnMain,
															 spriteBtnMainSelected,
															 this,
															 menu_selector(MainMenu::onMainMenuClick));
	
	menuBtnMain->setAnchorPoint(CCPointZero);
	//初始状态，先隐藏到左下角
	float initScale = 1.2f;
	CCSize menuBtnSize = menuBtnMain->getContentSize();
	menuBtnMain->setPosition(ccp(-menuBtnSize.width*initScale, -menuBtnSize.height*initScale));
	menuBtnMain->setScale(initScale);
	
	CCMenu* pMenu = CCMenu::create(menuBtnMain, NULL);
	pMenu->setPosition(CCPointZero);
}

MainMenu::~MainMenu(){
	
}

/*CCMenu* getMenu(){
	return this->pMenu;
}*/

/*void MainMenu::init(){
	
}*/

void MainMenu::showWithAnimate(){
	CCActionInterval* actionScaleTo = CCScaleTo::create(1.0f, 1.0f);
	CCActionInterval* actionMoveTo = CCMoveTo::create(1.0f, CCPointZero);
	//pMenu->runAction(actionScaleTo);
	//pMenu->runAction(actionMoveTo);
	menuBtnMain->runAction(actionMoveTo);
	menuBtnMain->runAction(actionScaleTo);
}

/*CCMenu* MainMenu::getMainMenu(){
	return pMenu;
}*/

void MainMenu::onMainMenuClick(CCObject *pSender){
	
}
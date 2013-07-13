//
//  MainMenu.h
//  RussiaBlock
//
//  Created by 裴超 on 13-7-13.
//
//

#ifndef __RussiaBlock__MainMenu__
#define __RussiaBlock__MainMenu__

#include <iostream>
#include "cocos2d.h"

using namespace cocos2d;

class MainMenu:public CCObject {
	CCSprite* spriteBtnMain;
	CCSprite* spriteBtnMainSelected;
	CCMenuItemSprite* menuBtnMain;
	//CCMenu* pMenu;
	
public:
	CCMenu* pMenu;
	
	
	MainMenu();
	~MainMenu();
	
	//void init();
	//CCMenu* getMenu();
	
	void showWithAnimate();
	
	//CCMenu* getMainMenu();
	
	void onMainMenuClick(CCObject* pSender);
};

#endif /* defined(__RussiaBlock__MainMenu__) */

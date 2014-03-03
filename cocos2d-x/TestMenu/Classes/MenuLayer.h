//
//  MenuLayer.h
//  TestMenu
//
//  Created by 裴超 on 14-2-26.
//
//

#ifndef __TestMenu__MenuLayer__
#define __TestMenu__MenuLayer__

#include <iostream>
#include "cocos2d.h"

class MenuLayer: public cocos2d::Layer
{
public:
	bool init();
	
	void onNewGame(Object* pSender);
	void onCredits(Object* pSender);
	
	CREATE_FUNC(MenuLayer);
};

#endif /* defined(__TestMenu__MenuLayer__) */

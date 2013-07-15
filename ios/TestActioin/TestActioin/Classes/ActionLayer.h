//
//  ActionLayer.h
//  TestActioin
//
//  Created by 裴超 on 13-7-14.
//
//

#ifndef __TestActioin__ActionLayer__
#define __TestActioin__ActionLayer__

#include <iostream>
#include "cocos2d.h"

using namespace cocos2d;

class ActionLayer:public CCLayer{
	
	CCLabelTTF* labelBasic;
	CCLabelTTF* labelTip;
	
public:
	bool init();
	
	bool ccTouchBegan(CCTouch* pTouch, CCEvent* pEvent);
	
	CREATE_FUNC(ActionLayer);
	
	void callback1();
	void callback2(CCNode* sender);
	void callback3(CCNode* sender, void* data);
};

#endif /* defined(__TestActioin__ActionLayer__) */

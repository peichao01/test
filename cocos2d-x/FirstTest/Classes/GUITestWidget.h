//
//  GUITestWidget.h
//  FirstTest
//
//  Created by 裴超 on 14-2-9.
//
//

#ifndef __FirstTest__GUITestWidget__
#define __FirstTest__GUITestWidget__

//#include <iostream>
#include "cocos2d.h"

class GUIWidget: public cocos2d::Layer
{
public:
	static cocos2d::Scene* createScene();
	
	virtual bool init();
	
	void touchEvent(Object* pSender);
	
	void menuCloseCallback(Object* pSender);
	
	CREATE_FUNC(GUIWidget);
};

#endif /* defined(__FirstTest__GUITestWidget__) */

//
//  Scene1Welcome.h
//  RussiaBlock
//
//  Created by 裴超 on 13-7-12.
//
//

#ifndef __RussiaBlock__Scene1Welcome__
#define __RussiaBlock__Scene1Welcome__

#include <iostream>
#include "cocos2d.h"

using namespace cocos2d;

class Scene1Welcome: public CCScene{
public:
	
	virtual bool init();
	//static void update();
	
	static Scene1Welcome* scene();
	
	CREATE_FUNC(Scene1Welcome);
	
	void onBtnPlayClick(CCObject* pSender);
	void onBtnMainClick(CCObject* pSender);
};

#endif /* defined(__RussiaBlock__Scene1Welcome__) */

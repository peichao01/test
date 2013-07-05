//
//  HelloEffect.h
//  cocos2d_test2
//
//  Created by 裴超 on 13-7-4.
//
//

#ifndef __cocos2d_test2__HelloEffect__
#define __cocos2d_test2__HelloEffect__

#include "cocos2d.h"

class HelloEffect: public cocos2d::CCLayer
{
public:
	virtual bool init();
	
	static cocos2d::CCScene* scene();
	
	void menuCloseCallback(CCObject* pClose);
	
	CREATE_FUNC(HelloEffect);
};

#endif /* defined(__cocos2d_test2__HelloEffect__) */

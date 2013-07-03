//
//  Test1Scene.h
//  cocos2d_test2
//
//  Created by 裴超 on 13-7-3.
//
//

#ifndef cocos2d_test2_Test1Scene_h
#define cocos2d_test2_Test1Scene_h

#include "cocos2d.h"

class Test1Scene: public cocos2d::CCLayer
{
public:
	virtual bool init();
	
	static cocos2d::CCScene* scene();
	
	void menuCloseCallback(CCObject* pSender);
	
	CREATE_FUNC(Test1Scene);
};


#endif //cocos2d_test2_Test1Scene_h

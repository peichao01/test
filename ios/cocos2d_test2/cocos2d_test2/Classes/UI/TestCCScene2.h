//
//  TestCCScene2.h
//  cocos2d_test2
//
//  Created by 裴超 on 13-7-12.
//
//

#ifndef __cocos2d_test2__TestCCScene2__
#define __cocos2d_test2__TestCCScene2__

#include <iostream>
#include "cocos2d.h"

class TestCCScene2: public cocos2d::CCLayer {
	
public:
	virtual bool init();
	static cocos2d::CCScene* scene();
	CREATE_FUNC(TestCCScene2);
};

#endif /* defined(__cocos2d_test2__TestCCScene2__) */

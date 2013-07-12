//
//  TestCCScene.h
//  cocos2d_test2
//
//  Created by 裴超 on 13-7-12.
//
//

#ifndef __cocos2d_test2__TestCCScene__
#define __cocos2d_test2__TestCCScene__

#include <iostream>
#include "cocos2d.h"

USING_NS_CC;

class TestCCScene:public CCScene{
	
public:
	virtual bool init();
	static TestCCScene* scene();
};

#endif /* defined(__cocos2d_test2__TestCCScene__) */

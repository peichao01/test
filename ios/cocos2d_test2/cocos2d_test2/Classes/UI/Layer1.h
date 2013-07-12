//
//  Layer1.h
//  cocos2d_test2
//
//  Created by 裴超 on 13-7-11.
//
//

#ifndef __cocos2d_test2__Layer1__
#define __cocos2d_test2__Layer1__

#include <iostream>
#include "cocos2d.h"

USING_NS_CC;

class AA : public CCLayer {
public:
	AA();
	~AA();
	virtual bool init();
	
	static AA* createWithName( CCString* _name );
	
	//演示scheduleUpdate，需要实现update函数
	virtual void update( float dt );
	
	void callback(float t);
};

#endif /* defined(__cocos2d_test2__Layer1__) */

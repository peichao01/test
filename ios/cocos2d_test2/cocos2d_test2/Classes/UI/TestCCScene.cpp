//
//  TestCCScene.cpp
//  cocos2d_test2
//
//  Created by 裴超 on 13-7-12.
//
//

#include "TestCCScene.h"

bool init(){
	return true;
}
TestCCScene* scene(){
	
	TestCCScene* sc = new TestCCScene();
	
	if (sc && sc->init()) {
		sc->autorelease();
		return sc;
	}
	
	return NULL;
}
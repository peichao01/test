//
//  TestCCScene2.cpp
//  cocos2d_test2
//
//  Created by 裴超 on 13-7-12.
//
//

#include "TestCCScene2.h"

bool TestCCScene2::init(){
	
	if(!CCLayer::init()){
		return false;
	}
	
	return true;
}

cocos2d::CCScene* scene(){
	/*cocos2d::CCScene* sc = new cocos2d::CCScene();
	
	if(sc && sc->init()){
		
		sc->autorelease();
		
		return sc;
	}*/
	cocos2d::CCScene* sc = NULL;
	
	do{
		sc = cocos2d::CCScene::create();
		CC_BREAK_IF(!sc);
		
		sc->addChild(TestCCScene2::create());
		return sc;
	}while (0);
	
	return NULL;
}
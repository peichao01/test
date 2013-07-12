//
//  Layer1.cpp
//  cocos2d_test2
//
//  Created by 裴超 on 13-7-11.
//
//

#include "Layer1.h"

AA::AA(){}

AA::~AA(){}

AA* AA::createWithName(CCString* _name){
	AA* a = new AA();
	
	if( a && a->init() ) {
		a->autorelease();
		return a;
	}
	
	CC_SAFE_DELETE(a);
	return NULL;
}
bool AA::init(){
	if(!CCLayer::init()){
		return false;
	}
	
	//this->scheduleUpdate();
	this->schedule(schedule_selector(AA::callback));
	
	return true;
}
void AA::callback(float t){
	CCLog("callback 更新");
}

void AA::update(float dt){
	
	//this->scheduleUpdate();
	CCLog("更新");
	
}
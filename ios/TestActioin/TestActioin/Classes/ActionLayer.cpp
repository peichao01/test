//
//  ActionLayer.cpp
//  TestActioin
//
//  Created by 裴超 on 13-7-14.
//
//

#include "ActionLayer.h"

using namespace cocos2d;

bool ActionLayer::init(){
	if(! CCLayer::init()){
		return false;
	}
	//CCLog("in ActionLayer::init()");
	
	CCSize size = CCDirector::sharedDirector()->getWinSize();
	
	CCLabelTTF* labelBasic = CCLabelTTF::create("基本动作", "Thonburi", 34);
	CCLabelTTF* labelTip = CCLabelTTF::create("点击我了", "Thonburi", 34);
	
	labelBasic->setAnchorPoint(ccp(0.5, 0.5));
	labelTip->setAnchorPoint(CCPointZero);
	
	labelBasic->setPosition(ccp(size.width/2, size.height/2));
	labelTip->setPosition(ccp(size.width - 200, 0));
	
	this->addChild(labelBasic);
	this->addChild(labelTip);
	
	labelTip->setVisible(false);
	
	
	
	CCSprite* spriteLeft = CCSprite::create("Icon@2x.png");
	CCSprite* spriteMiddle = CCSprite::create("Icon@2x.png");
	CCSprite* spriteRight = CCSprite::create("Icon@2x.png");
	
	spriteLeft->setPosition(ccp(size.width/2 - 200, size.height/2));
	spriteMiddle->setPosition(ccp(size.width/2, size.height/2));
	spriteRight->setPosition(ccp(size.width/2 + 200, size.height/2));
	
	this->addChild(spriteLeft);
	this->addChild(spriteMiddle);
	this->addChild(spriteRight);
	
	CCMoveTo* moveTo = CCMoveTo::create(2.0f, ccp(100, 100));
	CCMoveBy* moveBy = CCMoveBy::create(2.0f, ccp(100, 100));
	
	CCAction* jumpTo = CCJumpTo::create(3.0f, ccp(100, 100), 100.0f, 3);
	CCAction* jumpBy = CCJumpBy::create(3.0f, ccp(100, 100), 100.0f, 3);
	
	CCFadeOut* fadeOut = CCFadeOut::create(3.0f);
	CCFadeIn* fadeIn = CCFadeIn::create(3.0f);
	CCFadeTo* fadeTo = CCFadeTo::create(3.0f, 50);
	
	CCScaleTo* scaleTo = CCScaleTo::create(3.0f, 2.0f);
	CCScaleTo* scaleToX = CCScaleTo::create(3.0f, 4.0f, 1.0f);
	CCScaleTo* scaleToY = CCScaleTo::create(3.0f, 1.0f, 4.0f);
	CCScaleBy* scaleBy = CCScaleBy::create(3.0f, 2.0f);
	CCScaleBy* scaleByX = CCScaleBy::create(3.0f, 4.0f, 1.0f);
	CCScaleBy* scaleByY = CCScaleBy::create(3.0f, 1.0f, 4.0f);
	
	CCRotateTo* rotateTo = CCRotateTo::create(3.0f, 180.0f);
	CCRotateTo* rotateTo2 = CCRotateTo::create(3.0f, 180.0f, 120.0f);
	CCRotateTo* rotateTo3 = CCRotateTo::create(3.0f, 1080.0f);
	CCRotateBy* rotateBy = CCRotateBy::create(3.0f, 180.0f);
	CCRotateBy* rotateBy2 = CCRotateBy::create(3.0f, 180.0f, 120.0f);
	CCRotateBy* rotateBy3 = CCRotateBy::create(3.0f, 1080.0f);
	
	ccBezierConfig bezierConfig;
	bezierConfig.controlPoint_1 = ccp(50, 50);
	bezierConfig.controlPoint_2 = ccp(130, 30);
	bezierConfig.endPosition = ccp(60, 10);
	CCBezierTo* bezierTo = CCBezierTo::create(3.0f, bezierConfig);
	CCBezierBy* bezierBy = CCBezierBy::create(3.0f, bezierConfig);
	
	CCPointArray* pointArr = CCPointArray::create(20);
	pointArr->addControlPoint(ccp(10, 10));
	pointArr->addControlPoint(ccp(200, 160));
	pointArr->addControlPoint(ccp(50, 300));
	CCCardinalSplineTo* cardinalTo = CCCardinalSplineTo::create(3.0f,
																pointArr,
																0);
	CCCardinalSplineBy* cardinalBy = CCCardinalSplineBy::create(3.0f,
																pointArr,
																0);
	
	CCDelayTime* delayTime = CCDelayTime::create(2.0f);
	
	CCArray* actions = CCArray::create();
	actions->addObject(moveBy);
	//actions->addObject(delayTime);
	//actions->addObject(rotateBy);
	actions->addObject(scaleTo);
	//actions->addObject(rotateBy->reverse());
	//actions->addObject(delayTime->reverse());
	//actions->addObject(moveTo->reverse());
	actions->addObject(CCCallFunc::create(this, callfunc_selector(ActionLayer::callback1)));
	actions->addObject(CCCallFuncN::create(this, callfuncN_selector(ActionLayer::callback2)));
	actions->addObject(CCCallFuncND::create(this, callfuncND_selector(ActionLayer::callback3), (void*) spriteMiddle));
	
	CCFiniteTimeAction* sequence = CCSequence::create(actions);
	/*CCFiniteTimeAction* sequence = CCSequence::create(moveBy,
													  ,
													  ,
													  ,
	 												  NULL);*/
	
	//CCFiniteTimeAction* sequenceReverse = sequence->reverse();
	CCOrbitCamera* orbitCamera = CCOrbitCamera::create(5.0f, 100.0f, 50.0f, 0.0f, 0.0f, 180.0f, 180.f);
	CCSpawn* spawn = CCSpawn::create(actions);
	CCRepeat* repeat = CCRepeat::create(moveBy, 3);
	
	CCFollow* follow = CCFollow::create(spriteLeft);
	CCSpeed* speedMoveTo = CCSpeed::create(moveTo, 2.0f);
	
	CCProgressTo* progressTo = CCProgressTo::create(2.0f, 0.5f);
	CCProgressTimer* progressTimer = CCProgressTimer::create(spriteLeft);
	progressTimer->setType(kCCProgressTimerTypeBar);
	progressTimer->setPosition(ccp(300, 100));
	//addChild(progressTimer);
	
	//spriteLeft->runAction(moveTo);
	//spriteRight->runAction(moveBy);
	//spriteLeft->runAction(jumpTo);
	//spriteRight->runAction(jumpBy);
	//spriteLeft->runAction(fadeTo);
	//spriteRight->runAction(fadeTo);
	//spriteLeft->runAction(scaleToX);
	//spriteLeft->runAction(scaleByY);
	//spriteRight->runAction(scaleTo);
	//spriteLeft->runAction(rotateTo3);
	//spriteRight->runAction(rotateBy3);
	//spriteLeft->runAction(bezierTo);
	//spriteRight->runAction(bezierBy);
	//spriteLeft->runAction(cardinalTo);
	//spriteRight->runAction(cardinalBy);
	spriteLeft->runAction(sequence);
	//spriteRight->runAction(sequenceReverse);
	//this->runAction(orbitCamera);
	//this->runAction(follow);
	//spriteRight->runAction(speedMoveTo);
	//progressTimer->runAction(progressTo);
	//spriteLeft->runAction(spawn);
	//spriteLeft->runAction(repeat);
	
	
	
	this->setTouchEnabled(true);
	
	return true;
}

void ActionLayer::callback1(){
	CCLog("callback1");
}

void ActionLayer::callback2(CCNode* sender){
	CCLog("callback2");
}

void ActionLayer::callback3(CCNode* sender, void* data){
	CCLog("callback3");
}

bool ActionLayer::ccTouchBegan(CCTouch *pTouch, CCEvent *pEvent){
	
	labelTip->setVisible(!labelTip->isVisible());
	
	CCLog("in ccTouchBegan");
	
	return true;
}
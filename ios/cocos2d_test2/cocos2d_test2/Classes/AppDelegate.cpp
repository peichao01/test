//
//  cocos2d_test2AppDelegate.cpp
//  cocos2d_test2
//
//  Created by 裴超 on 13-7-3.
//  Copyright __MyCompanyName__ 2013年. All rights reserved.
//

#include "AppDelegate.h"

#include "cocos2d.h"
#include "SimpleAudioEngine.h"
#include "HelloWorldScene.h"
//#include "Test1Scene.h"
//#include "Test2Scene.h"
//#include "TestCCScene2.h"

USING_NS_CC;
using namespace CocosDenshion;

AppDelegate::AppDelegate()
{

}

AppDelegate::~AppDelegate()
{
}

bool AppDelegate::applicationDidFinishLaunching()
{
    // initialize director
    CCDirector *pDirector = CCDirector::sharedDirector();
    pDirector->setOpenGLView(CCEGLView::sharedOpenGLView());
	
	//CCEGLView::sharedOpenGLView()->setDesignResolutionSize(800, 480, kResolutionNoBorder);
	CCSize sizeWin = pDirector->getWinSize();
	CCSize sizeVWin = pDirector->getVisibleSize();
	CCLog("win size: %f, %f", sizeWin.width, sizeWin.height);
	CCLog("visible size: %f, %f", sizeVWin.width, sizeVWin.height);
	//CCLog("is Retina Display: ", pDirector->isRetinaDisplay()

    // turn on display FPS
    pDirector->setDisplayStats(true);

    // set FPS. the default value is 1.0/60 if you don't call this
    pDirector->setAnimationInterval(1.0 / 60);

    // create a scene. it's an autorelease object
    CCScene *pScene = HelloWorld::scene();
	//CCScene* pScene = Test2Scene::scene();
	//CCScene *pScene = Test1Scene::scene();
	//CCScene* pScene = TestCCScene2::scene();

    // run
    pDirector->runWithScene(pScene);

    return true;
}

// This function will be called when the app is inactive. When comes a phone call,it's be invoked too
void AppDelegate::applicationDidEnterBackground()
{
    CCDirector::sharedDirector()->stopAnimation();
    SimpleAudioEngine::sharedEngine()->pauseBackgroundMusic();
    SimpleAudioEngine::sharedEngine()->pauseAllEffects();
}

// this function will be called when the app is active again
void AppDelegate::applicationWillEnterForeground()
{
    CCDirector::sharedDirector()->startAnimation();
    SimpleAudioEngine::sharedEngine()->resumeBackgroundMusic();
    SimpleAudioEngine::sharedEngine()->resumeAllEffects();
}

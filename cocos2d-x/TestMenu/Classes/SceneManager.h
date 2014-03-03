//
//  SceneManager.h
//  TestMenu
//
//  Created by 裴超 on 14-2-25.
//
//

#ifndef __TestMenu__SceneManager__
#define __TestMenu__SceneManager__

#include <iostream>

#include "cocos2d.h"
#include "MenuLayer.h"

class SceneManager: public cocos2d::Object
{
public:
	SceneManager(){};
	~SceneManager(){};
	
	static void goMenu();
	
private:
	static void go(cocos2d::Layer* layer);
	static cocos2d::Scene wrap(cocos2d::Layer* layer);
};

#endif /* defined(__TestMenu__SceneManager__) */

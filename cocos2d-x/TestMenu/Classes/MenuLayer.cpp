//
//  MenuLayer.cpp
//  TestMenu
//
//  Created by 裴超 on 14-2-26.
//
//

#include "MenuLayer.h"
#include "SceneManager.h"
USING_NS_CC;

bool MenuLayer::init()
{
	if (!Layer::init()) {
		return false;
	}
	
	Size visibleSize = Director::getInstance()->getVisibleSize();
	
	TTFConfig config_font96("Marker Felt.ttf", 96);
	TTFConfig config_font52("Marker Felt.ttf", 52);
	
	Label* titleLeft = Label::createWithTTF(config_font96, "Menu");
	Label* titleRight = Label::createWithTTF(config_font96, "System");
	Label* titleQuotes = Label::createWithTTF(config_font96, "\"               \"");
	Label* titleCenterTop = Label::createWithTTF(config_font52, "How to build a ...");
	Label* titleCenterBottom = Label::createWithTTF(config_font96, "Part 1");
	
	MenuItemFont* startNew = MenuItemFont::create("New Game", CC_CALLBACK_1(MenuLayer::onNewGame, this));
	MenuItemFont* credits = MenuItemFont::create("Credits", CC_CALLBACK_1(MenuLayer::onCredit, this));
	
	Menu* menu = Menu::create(startNew, credits, NULL);
	
	titleCenterTop->setPosition(
		Point((visibleSize.width - titleCenterBottom->getContentSize().width)/2,
			  titleRight->getPosition().y - titleCenterBottom->getContentSize().height - 40)
	);
	this->addChild(titleCenterBottom);
	
	menu->setPosition(Point(visibleSize.width / 2, titleCenterBottom->getPosition().y - 150));
	menu->alignItemsVerticallyWithPadding(80.0f);
	this->addChild(menu, 2);
	
	return true;
}
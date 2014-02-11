//
//  GUITestWidget.cpp
//  FirstTest
//
//  Created by 裴超 on 14-2-9.
//
//

#include "GUITestWidget.h"
//#include "cocos2d::gui.h"
//#include "gui/UIButton.h"

//using namespace cocos2d::;


USING_NS_CC;

Scene* GUIWidget::createScene()
{
	auto scene = Scene::create();
	
	auto layer = GUIWidget::create();
	
	scene->addChild(layer);
	
	return scene;
}

bool GUIWidget::init()
{
	if (!Layer::init()) {
		return false;
	}
	
	auto size = Director::getInstance()->getWinSize();
	auto origin = Director::getInstance()->getVisibleOrigin(); //getOrigin();
	
//	auto uLabel = Label::create();
//	uLabel->setText("Hello Cocos!");
//	uLabel->setFontName("Marker Felt");
//	uLabel->setFontSize(30);
	auto uLabel = LabelTTF::create("Hello Cocos!", "Marker Felt", 30);
	uLabel->setColor(Color3B(159, 168, 176));
	uLabel->setPosition(Point(size.width / 2, size.height / 2));
//	this->addChild(uLabel, 1);
	
//	auto uButton = gui::Button::create();
//	uButton->setTouchEnabled(true);
//	uButton->loadTextures("cocosgui/animationbuttonnormal.png", "cocosgui/animationbuttonpressed.png", "");
//	uButton->setPosition(Point(size.width / 2, size.height / 2) + Point(0, -50));
//	uButton->addTouchEventListener(this, toucheventselector(GUIWidget::touchEvent));
	
	auto sprite1 = Sprite::create("BlueSquare.png");//("Images/CyanSquare.png");
	sprite1->setPosition(origin + Point(size.width / 2, size.height / 2) + Point(-80, 80));
	addChild(sprite1, 10);
	
	auto sprite2 = Sprite::create("RedSquare.png");
	sprite2->setPosition(origin + Point(size.width / 2, size.height / 2));
	addChild(sprite2, 20);
	
	auto sprite3 = Sprite::create("GreenSquare.png");
	sprite3->setPosition(Point(0, 0));
	sprite2->addChild(sprite3, 1);
	
	
	auto listener1 = EventListenerTouchOneByOne::create();
	listener1->setSwallowTouches(true);
	listener1->onTouchBegan = [](Touch* touch, Event* event){
		auto target = static_cast<Sprite*>(event->getCurrentTarget());
		
		Point locationInNode = target->convertToNodeSpace(touch->getLocation());
		Size s = target->getContentSize();
		Rect rect = Rect(0, 0, s.width, s.height);
		
		if (rect.containsPoint(locationInNode)) {
			log("sprite began... x = %f, y = %f", locationInNode.x, locationInNode.y);
			target->setOpacity(180);
			return true;
		}
		
		return false;
	};
	
	listener1->onTouchMoved = [](Touch* touch, Event* event){
		auto target = static_cast<Sprite*>(event->getCurrentTarget());
		target->setPosition(target->getPosition() + touch->getDelta());
	};
	
	listener1->onTouchEnded = [](Touch* touch, Event* event){
		auto target = static_cast<Sprite*>(event->getCurrentTarget());
		log("sprite onTouchesEnded...");
		target->setOpacity(255);
		
		if (target == static_cast<Sprite*>(sprite1)) {
			sprite1->setZOrder(0);
		}
		else if (target == sprite2)
		{
			sprite1->setZOrder(100);
		}
	};
	
	auto dispatcher = Director::getInstance()->getEventDispatcher(); //Director::getInstance()->getDispather();
	dispatcher->addEventListenerWithSceneGraphPriority(listener1, sprite1);
	dispatcher->addEventListenerWithSceneGraphPriority(listener1->clone(), sprite2);
	dispatcher->addEventListenerWithSceneGraphPriority(listener1->clone(), sprite3);
	
	
	auto uLayer = Layer::create();
	uLayer->addChild(uLabel);
//	uLayer->addChild(uButton);
//	addChild(uLayer);
	
	return true;
}

void GUIWidget::touchEvent(Object* pSender)
{
	
}

void GUIWidget::menuCloseCallback(Object* pSender)
{
	Director::getInstance()->end();
	
#if (CC_TARGET_PLATFORM == CC_PLATFORM_IOS)
	exit(0);
#endif
}
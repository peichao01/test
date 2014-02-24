#include "HelloWorldScene.h"

USING_NS_CC;

Scene* HelloWorld::createScene()
{
    // 'scene' is an autorelease object
    auto scene = Scene::create();
    
    // 'layer' is an autorelease object
    auto layer = HelloWorld::create();

    // add layer as a child to scene
    scene->addChild(layer);

    // return the scene
    return scene;
}

// on "init" you need to initialize your instance
bool HelloWorld::init()
{
    //////////////////////////////
    // 1. super init first
    if ( !Layer::init() )
    {
        return false;
    }
	
	Size winSize = Director::getInstance()->getWinSize();
	
	Texture2D::setDefaultAlphaPixelFormat(Texture2D::PixelFormat::RGB565);
	background = Sprite::create("blue-shooting-stars.png");
	background->setAnchorPoint(Point(0, 0));
	addChild(background);
	
	Texture2D::setDefaultAlphaPixelFormat(Texture2D::PixelFormat::DEFAULT);
	
	std::vector<std::string> images{"bird.png","cat.png","dog.png","turtle.png"};
	
	const unsigned images_size = 4;
	std::string images2[images_size] = {"bird.png","cat.png","dog.png","turtule.png"};
//	decltype(images->size()) images_length = images->size();
	
	
//	std::cout << "------------" << images.size() << "---------------" << std::endl;
	
	int i = 0;
	for (auto images_begin = images.begin(); images_begin != images.end(); images_begin++, i++) {
//		std::cout << "====" << *images_begin << std::endl;
		Sprite* sprite = Sprite::create(*images_begin);
		if (!sprite) {
			std::cout << "sprite NULL" << std::endl;
		}
		else{
			sprite->setPosition(Point(winSize.width / 4 * i + 50, winSize.height / 2));
			addChild(sprite);
			movableSprites.pushBack(sprite);
		}
	}
	
//	std::cout << "============================" << std::endl;
	for (int ii = 0; ii < images_size; ii++) {
		std::cout << images2[ii] << " ==== done." << std::endl;
//		float offsetFraction = i;
//		Sprite* sprite = Sprite::create(images[i]);
////		sprite->setPosition(Point(winSize.width / 4 * 0, winSize.height / 2));
//		addChild(sprite);
//		movableSprites.pushBack(sprite);
////		movableSprites->pushBack(sprite);
	}
//	std::cout << "============================" << std::endl;
	
	selSprite = NULL;
	
	
	auto listener = EventListenerTouchOneByOne::create();
	listener->setSwallowTouches(true);
	listener->onTouchBegan = CC_CALLBACK_2(HelloWorld::onTouchBegan, this);
	listener->onTouchMoved = CC_CALLBACK_2(HelloWorld::onTouchMoved, this);
	listener->onTouchEnded = CC_CALLBACK_2(HelloWorld::onTouchEnded, this);
	Director::getInstance()->getEventDispatcher()->addEventListenerWithSceneGraphPriority(listener, this);
	
	return true;
    
//    Size visibleSize = Director::getInstance()->getVisibleSize();
//    Point origin = Director::getInstance()->getVisibleOrigin();
//
//    /////////////////////////////
//    // 2. add a menu item with "X" image, which is clicked to quit the program
//    //    you may modify it.
//
//    // add a "close" icon to exit the progress. it's an autorelease object
//    auto closeItem = MenuItemImage::create(
//                                           "CloseNormal.png",
//                                           "CloseSelected.png",
//                                           CC_CALLBACK_1(HelloWorld::menuCloseCallback, this));
//    
//	closeItem->setPosition(Point(origin.x + visibleSize.width - closeItem->getContentSize().width/2 ,
//                                origin.y + closeItem->getContentSize().height/2));
//
//    // create menu, it's an autorelease object
//    auto menu = Menu::create(closeItem, NULL);
//    menu->setPosition(Point::ZERO);
//    this->addChild(menu, 1);
//
//    /////////////////////////////
//    // 3. add your codes below...
//
//    // add a label shows "Hello World"
//    // create and initialize a label
//    
//    auto label = LabelTTF::create("Hello World", "Arial", 24);
//    
//    // position the label on the center of the screen
//    label->setPosition(Point(origin.x + visibleSize.width/2,
//                            origin.y + visibleSize.height - label->getContentSize().height));
//
//    // add the label as a child to this layer
//    this->addChild(label, 1);
//
//    // add "HelloWorld" splash screen"
//    auto sprite = Sprite::create("HelloWorld.png");
//
//    // position the sprite on the center of the screen
//    sprite->setPosition(Point(visibleSize.width/2 + origin.x, visibleSize.height/2 + origin.y));
//
//    // add the sprite as a child to this layer
//    this->addChild(sprite, 0);
//    
//    return true;
}

//bool HelloWorld::onTouchBegan(Touch *touch, Event *unused_event)
//{
//	Point touchLocation = this->convertTouchToNodeSpace(touch);
//	this->se
//	return true;
//}
//
//void HelloWorld::selectSpriteForTouch()
//{
//	
//}

bool HelloWorld::onTouchBegan(cocos2d::Touch *touch, cocos2d::Event *event)
{
	Point touchLocation = this->convertTouchToNodeSpace(touch);
	selectSpriteForTouch(touchLocation);
	return true;
}

void HelloWorld::onTouchMoved(Touch* touch, Event* event)
{
	Point touchLocation = this->convertTouchToNodeSpace(touch);
	
	Point oldTouchLocation = touch->getPreviousLocation();
	oldTouchLocation = this->convertToNodeSpace(oldTouchLocation);
	
	Point translation = touchLocation - oldTouchLocation;
	this->panForTranslation(translation);
}

void HelloWorld::onTouchEnded(Touch* touch, Event* event)
{
	
}

void HelloWorld::selectSpriteForTouch(Point touchLocation)
{
	Sprite* newSprite = NULL;
	for (Sprite* sprite : movableSprites) {
		if (sprite->getBoundingBox().containsPoint(touchLocation)) {
			newSprite = sprite;
			break;
		}
	}
	if (NULL != selSprite) {
		selSprite->stopAllActions();
		selSprite->runAction(RotateTo::create(0.1, 0));
	}
	if (NULL != newSprite) {
		if (newSprite != selSprite) {
			RotateBy* rotLeft = RotateBy::create(0.1, -14.0);
			RotateBy* rotCenter = RotateBy::create(0.1, 0.0);
			RotateBy* rotRight = RotateBy::create(0.1, 14.0);
			Sequence* seq = Sequence::create(rotLeft, rotCenter, rotRight, NULL);
			newSprite->runAction(RepeatForever::create(seq));
			selSprite = newSprite;
		}
	}
	else
	{
		selSprite = newSprite;
	}
}

void HelloWorld::panForTranslation(Point translation)
{
	if (selSprite) {
		Point newPos = selSprite->getPosition() + translation;
		selSprite->setPosition(newPos);
	}
	else
	{
		Point newPos = this->getPosition() + translation;
		this->setPosition(this->boundLayerPos(newPos));
	}
}

Point HelloWorld::boundLayerPos(Point newPos)
{
	Size winSize = Director::getInstance()->getWinSize();
	Point retval = newPos;
	
	retval.x = MIN(retval.x, 0);
	retval.x = MAX(retval.x, -background->getContentSize().width + winSize.width);
	
	retval.y = this->getPosition().y;
	return retval;
}


void HelloWorld::menuCloseCallback(Object* pSender)
{
    Director::getInstance()->end();

#if (CC_TARGET_PLATFORM == CC_PLATFORM_IOS)
    exit(0);
#endif
}

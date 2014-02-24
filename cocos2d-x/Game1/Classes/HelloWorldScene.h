#ifndef __HELLOWORLD_SCENE_H__
#define __HELLOWORLD_SCENE_H__

#include "cocos2d.h"

class HelloWorld : public cocos2d::Layer
{
public:
    // there's no 'id' in cpp, so we recommend returning the class instance pointer
    static cocos2d::Scene* createScene();

    // Here's a difference. Method 'init' in cocos2d-x returns bool, instead of returning 'id' in cocos2d-iphone
    virtual bool init();  
    
    // a selector callback
    void menuCloseCallback(Object* pSender);
    
    // implement the "static create()" method manually
    CREATE_FUNC(HelloWorld);
	
	cocos2d::Sprite* background;
	cocos2d::Sprite* selSprite;
//	cocos2d::Vector movableSprites;
	cocos2d::Vector<cocos2d::Sprite*> movableSprites;
	
	bool onTouchBegan(cocos2d::Touch*, cocos2d::Event*);
	void onTouchMoved(cocos2d::Touch*, cocos2d::Event*);
	void onTouchEnded(cocos2d::Touch*, cocos2d::Event*);
	
	void selectSpriteForTouch(cocos2d::Point);
	void panForTranslation(cocos2d::Point);
	cocos2d::Point boundLayerPos(cocos2d::Point);
};

#endif // __HELLOWORLD_SCENE_H__

//
//  Scene1Welcome.h
//  RussiaBlock
//
//  Created by 裴超 on 13-7-12.
//
//

#ifndef __RussiaBlock__Scene1Welcome__
#define __RussiaBlock__Scene1Welcome__

#include <iostream>
#include "cocos2d.h"

class Scene1Welcom: public cocos2d::CCScene{
public:
	
	bool init();
	
	virtual Scene1Welcom* scene();
	
	CREATE_FUNC(Scene1Welcom);
};

#endif /* defined(__RussiaBlock__Scene1Welcome__) */

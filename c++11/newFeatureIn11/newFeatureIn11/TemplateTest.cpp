//
//  TemplateTest.cpp
//  newFeatureIn11
//
//  Created by 裴超 on 14-2-16.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#include "TemplateTest.h"

template <typename T>
int compare(const T &v1, const T &v2)
{
	if (v1 < v2) {
		return -1;
	}
	if (v1 > v2) {
		return 1;
	}
	return 0;
}


void TemplateTest::init()
{
	
}
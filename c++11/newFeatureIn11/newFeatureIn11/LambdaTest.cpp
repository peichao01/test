//
//  LambdaTest.cpp
//  newFeatureIn11
//
//  Created by 裴超 on 14-2-18.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#include <iostream>
#include "LambdaTest.h"

using namespace std;

void LambdaTest::test() {
	// 1
	auto func = [](){
		cout << "Hello World" << endl;
	};
	func();
	
	// 2
	[](){
		cout << "func2." << endl;
	}();
	
	// 3
	cout << []()->int{ return 1;}() << endl;
	
	// 5
}

void LambdaTest::test2(){
	// 4
	vector<string>addrs_cn = this->findMatchingAddress([](const string &addr){
		return addr.find(".cn") != string::npos;
	});
	
//	for (auto itr = addrs_cn.begin(); itr != addrs_cn.end(); ++itr) {
//		cout << *itr << endl;
//	}
}
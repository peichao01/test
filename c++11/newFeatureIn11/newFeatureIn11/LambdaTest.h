//
//  LambdaTest.h
//  newFeatureIn11
//
//  Created by 裴超 on 14-2-18.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#ifndef __newFeatureIn11__LambdaTest__
#define __newFeatureIn11__LambdaTest__

#include <iostream>
#include <string>
#include <vector>

using namespace std;

class LambdaTest {
public:
	static void test();
	
	LambdaTest(){
		this->_address = {"www.peichao01.com",
						"www.anlianni.com",
						"www.qiannvyou.com",
						"www.giftu.cn"};
	};
	
	void test2();
	
	template<typename Func>
	vector<string> findMatchingAddress(Func func)
	{
//		vector<string> _addrs(this->_address);
		vector<string> results;
//		this->_address.begin();
		
		for(auto itr = this->_address.begin(); itr != this->_address.end(); ++itr)
		{
			if (func(*itr)) {
				results.push_back(*itr);
			}
		}
		return results;
	}
	
private:
	vector<string> _address;
};

#endif /* defined(__newFeatureIn11__LambdaTest__) */

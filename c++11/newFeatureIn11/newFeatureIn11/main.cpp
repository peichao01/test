//
//  main.cpp
//  newFeatureIn11
//
//  Created by 裴超 on 14-2-16.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#include <iostream>
#include <vector>
#include "TemplateTest.h"
#include "LambdaTest.h"

//using std::cout;
//using std::endl;
//using std::string;
//using std::vector;
using namespace std;

int main(int argc, const char * argv[])
{
//	TemplateTest::init();
	LambdaTest::test();
	LambdaTest* lambda_test = new LambdaTest();
	lambda_test->test2();

	// insert code here...
//	std::cout << "Hello, World!\n";
	
	// ================= 1. Lambda
//	int i1 = 0;
//	std::string s1 = "Hello!";
//	
//	std::vector<std::string> v1 = {"vector item 1","vector item 2"};
//	[i1, s1](){
//		std::cout << i1 << std::endl;
//		std::cout << s1 << std::endl;
////		i1 = 2;
////		s1 = "World!";
//	}();
//	
//	bool r1 = [&i1, &s1]()->bool{
//		cout << i1 << endl;
//		cout << s1 << endl;
//		i1 = 2;
//		s1 = "World!";
//		return true;
//	}();
//	cout << i1 << endl;
//	cout << s1 << endl;
//	std::cout << r1 << std::endl;
	
	
    return 0;
}


//
//  main.cpp
//  test
//
//  Created by 裴超 on 14-4-8.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#include <iostream>
#include <assert.h>

int find(int array[], int length, int value)
{
	if (NULL == array || 0 == length) {
		return false;
	}
//	int index = 0;
//	for (; index<length; index++) {
//		if (value == array[index]) {
//			return index;
//		}
//	}
//	return false;
	
	int* start = array;
	int* end = array + length;
	while (start < end) {
		if (value == *start) {
			//return ((int)start - (int)array)/(sizeof(int));
		}
		start++;
	}
	return false;
}

template<typename type>
int find2(type array[], int length, type value)
{
	if (NULL == array || 0 == length) {
		return false;
	}
	
	type* start = array;
	type* end = array + length;
	while (start < end) {
		if (value == *start) {
//			return ((int)start - (int)array)/(sizeof(type));
		}
		start++;
	}
	
	return false;
}

static void test1()
{
	int array[10] = {0};
	assert(false == find(NULL, 10, 10));
	assert(false == find(array, 0, 10));
}

static void test2()
{
	int array[10] = {1, 2};
	assert(0 == find(array, 10, 1));
	assert(false == find(array, 10, 10));
}

static void test3()
{
	int array[10] = {0};
	assert(false == find2<int>(NULL, 10, 10));
	assert(false == find2<int>(array, 0, 10));
}

static void test4()
{
	int array[10] = {1, 2};
	assert(0 == find2<int>(array, 10, 1));
	assert(false == find2<int>(array, 10, 10));
}

int main(int argc, const char * argv[])
{

	// insert code here...
//	std::cout << "Hello, World!\n";
	test1();
	test2();
	
	test3();
	test4();
    return 0;
}


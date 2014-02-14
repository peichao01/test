//
//  main.cpp
//  Test1
//
//  Created by 裴超 on 14-2-15.
//  Copyright (c) 2014年 裴超. All rights reserved.
//

#include <iostream>

class MyClass
{
private:
	int R1;
	int R2;
public:
	MyClass(int r1, int r2){R1 = r1; R2 = r2;}
	void print();
	void print() const;
};

void MyClass::print(){std::cout << "print normal " << R1 << R2 << std::endl;}
void MyClass::print()const{std::cout << "print const " << R1 << R2 << std::endl;}

int main(int argc, const char * argv[])
{

	// insert code here...
//	std::cout << "Hello, World!\n";
	
	MyClass r_normal(5, 4);
	r_normal.print();
	
	
	const MyClass r_const(5, 4);
	r_const.print();
	
    return 0;
}


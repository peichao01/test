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
	void print_const() const;
};

void MyClass::print(){std::cout << "print normal " << R1 << R2 << std::endl;}
void MyClass::print()const{std::cout << "print const " << R1 << R2 << std::endl;}
void MyClass::print_const()const{std::cout << "print const " << R1 << R2 << std::endl;}

class CRectangle
{
	int width, height;
public:
	void set_values(int, int);
	int area(){return width * height;}
};

void CRectangle::set_values(int a, int b)
{
	width = a;
	height = b;
}


class CVector
{
public:
	int x, y;
	CVector(){};
	CVector(int, int);
	CVector operator + (CVector);
	CVector addCVector(CVector);
};

CVector::CVector(int a, int b)
{
	x = a;
	y = b;
}

CVector CVector::operator+(CVector param)
{
	CVector temp;
	temp.x = x + param.x;
	temp.y = y + param.y;
	return temp;
}

CVector CVector::addCVector(CVector param)
{
	CVector temp;
	temp.x = x + param.x;
	temp.y = y + param.y;
	return temp;
}

class CDummy
{
public:
	int isitme(CDummy &dummy);
	int isitme2(CDummy dummy);
};

int CDummy::isitme(CDummy &dummy)
{
	if (&dummy == this) {
		return 1;
	}
	return 0;
}

int main(int argc, const char * argv[])
{

	// insert code here...
//	std::cout << "Hello, World!\n";
	
	MyClass r_normal(5, 4);
	r_normal.print();
	r_normal.print_const();
	
	
	const MyClass r_const(5, 4);
	r_const.print();
	
	
	CRectangle a, *b, *c;
	CRectangle* d = new CRectangle[2];
	
	b = new CRectangle;
	c = &a;
	a.set_values(1, 2);
	b->set_values(3, 4);
	d->set_values(5, 6);
	d[1].set_values(7, 8);
	std::cout << "a area: " << a.area() << std::endl;
	std::cout << "*b area: " << b->area() << std::endl;
	std::cout << "*c area: " << c->area() << std::endl;
	std::cout << "d[0] area: " << d[0].area() << std::endl;
	std::cout << "d[1] area: " << d[1].area() << std::endl;
	
	
	CVector cv1(3, 1);
	CVector cv2(1, 2);
	CVector cv3;
	cv3 = cv1 + cv2;
	CVector cv4 = cv1.addCVector(cv2);
	
	std::cout << cv3.x << ", " << cv3.y << std::endl;
	std::cout << cv4.x << ", " << cv4.y << std::endl;
	
	
	CDummy cd1;
	CDummy *cd2 = &cd1;
//	if (cd1.isitme(cd2)) {
//
//	}
	if (cd2->isitme(cd1)) {
		std::cout << "yes, &cd1 is cd2" << std::endl;
	}
	
    return 0;
}


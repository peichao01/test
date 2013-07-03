// pointer to classes example
#include <iostream.h>

class CRectangle {
		int width, height;
	public:
		void set_values(int, int);
		int area(void);
};
void CRectangle::set_values(int a, int b){
	width = a;
	height = b;
}
int CRectangle::area(void){
	return width*height;
}

int main(){
	CRectangle a, *b, *c;
	//CRectangle *d = new CRectangle[2];
	/*
	//上一句可以分解为这两个语句
	CRectangle *d;
	//new CRectangle[2];这句生成了一个数组，而指针 d 指向了此数组的第一个地址
	d = new CRectangle[2];
	*/
	CRectangle d[2];//同上句使用上相同
	b = new CRectangle;
	c = &a;
	a.set_values(1, 2);
	b->set_values(3, 4);
	d->set_values(5, 6);
	d[1].set_values(7, 8);
	
	cout << "a area: " << a.area() << endl;
	cout << "*b area: " << b->area() << endl;
	cout << "*c area: " << c->area() << endl;
	cout << "d[0] area: " << d[0].area() << endl;
	cout << "d[1] area: " << d[1].area() << endl;

	return 0;
}

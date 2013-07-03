#include <iostream.h>

class CRectangle 
{
		int x, y;
	public:
		void set_values(int, int);
		int area(void);
};
void CRectangle::set_values(int a, int b)
{
	x = a;
	y = b;
}
int CRectangle::area(void)
{
	return x*y;
}

int main()
{
	CRectangle rect, rectb;
	rect.set_values(3, 4);
	rectb.set_values(5, 6);
	cout << "rect area: " << rect.area() << endl;
	cout << "rectb area: " << rectb.area() << endl;
	return 0;
}

#include <iostream.h>

class Base
{
	public:
		Base(){}
	public:
		virtual void print(){
			cout << "Base" << endl;
		}
		/*
		void print(){
			cout << "Base" << endl;
		}
		*/
};

class Derived: public Base
{
	public:
		Derived(){}
	public:
		/*
		void print(){
			cout << "Derived" << endl;
		}
		*/
		virtual void print(){
			cout << "Derived" << endl;
		}
};

int main(){
	Base * derived_base = new Derived();
	cout << "Derived instance, type Base: ";
	derived_base->print();

	Derived * derived = new Derived;
	cout << "Derived instance, type Derived: ";
	derived->print();

	Base * base = new Base;
	cout << "Base instance, type Base: ";
	base->print();
	
	return 0;
}

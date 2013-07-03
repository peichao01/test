// constructors and derivated classes
#include <iostream.h>

class mother {
	public:
		mother(){
			cout << "mother: no parameters\n";
		}
		mother(int a){
			cout << "mother: int parameters\n";
		}
};

class daughter: public mother {
	public:
		daughter(int a){
			cout << "daughter: int parameter\n\n";
		}
};

class son: public mother {
	public:
		son(int a): mother(a){
			cout << "son: int parameter\n\n";
		}
};

int main(){
	daughter cynthia(1);
	son daniel(1);
	return 0;
}

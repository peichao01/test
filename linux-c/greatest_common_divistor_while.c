#include <stdio.h>

int greatestCD(int a, int b){
	if(a<b){
		int c = b;
		b=a;
		a=c;
	}
	int divisor = b;
	while(a!=a/b*b){
		int c = a;
		a=b;
		b=c%b;
		divisor = b;
	}
	return divisor;
}

int main(void){
	int a=20;
	int b=10;
	printf("%d and %d's greatest common divisor is: %d\n", a, b, greatestCD(a, b));
	return 0;
}

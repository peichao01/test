#include <stdio.h>

/*int can_exact_division(int number, int divistor){
	int tmp = number/divistor;
	return number == tmp*divistor;
}

int greatest_common_divistor(int a, int b){
	int c;
	if(b>a){
		c=b;
		b=a;
		a=c;
	}
	int divistor = b;
	if(can_exact_division(a, divistor) && can_exact_division(b, divistor)){
		return divistor;
	}else{
		return greatest_common_divistor(a, b-1);
	}
}*/

int greatest_common_divistor(int a, int b){
	if(a == a/b*b) return b;
	else return greatest_common_divistor(b, a%b);
}

int main(void){
	int a = 19;
	int b = 20;
	printf("%d and %d 's greatest commcon divistor is: %d\n", a, b, greatest_common_divistor(a, b));
	return 0;
}

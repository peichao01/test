#include <stdio.h>

int fibonacci(int n){
	if(n<0){
		printf("fibonacci number must bigger than 0.");
		return 0;
	}
	if(n==0 || n==1) return 1;
	else return fibonacci(n-1) + fibonacci(n-2);
}

int main(void){
	int num = 8;
	printf("fibonacci of %d is:%d\n", num, fibonacci(num));
	return 0;
}

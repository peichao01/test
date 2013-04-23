#include <stdio.h>

int factorial(int n)
{
	if(n == 0){
		return 1;
	}else{
		int recurse = factorial(n - 1);
		int result = n * recurse;
		return result;
	}
}

int main(void)
{
	int start = 10;
	int result = factorial(start);
	printf("factorial(%d) => %d", start, result);
	return 0;
}

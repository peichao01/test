#include <stdio.h>

double power(double x, int n)
{
	int is_even = 1;
	if(n%2 == 1){
		is_even = 0;
		n--;
	}
	return x;
}

double power2(double x, int n)
{
	double result = 1.0;
	int i;
	for(i=0; i<n; i++){
		result *= x;
	}
	return result;
}

int main(void)
{
	double num;
	int pow;
	printf("input your number to power: ");
	scanf("%lf", &num);
	printf("input your power: ");
	scanf("%d", &pow);
	printf("%f's %d power is: %f\n", num, pow, power2(num, pow));
	return 0;
}

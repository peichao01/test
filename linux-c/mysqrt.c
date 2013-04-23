#include <stdio.h>

double mysqrt(double y)
{
	double start = 0.0, end = y < 1 ? 1 : y, mid, power2, differ;
	double tolerance = 0.000001;
	if(y<start)
		return -1;
	int loop_times = 50;
	while(loop_times-- >= 0){
		mid = (end-start)/2 + start;
		power2 = mid * mid;
		differ = power2 - y;
		if(differ > -tolerance && differ < tolerance)
			break;
		else if(power2 < y)
			start = mid;
		else if(power2 > y)
			end = mid;
	}
	printf("loop times:%d\n", 50 - loop_times);
	return mid;
}

int main(void)
{
	double find = 3.0;
	printf("%f's sqrt is: %f\n", find,  mysqrt(find));

	find = 4.0;
	printf("%f's sqrt is: %f\n", find,  mysqrt(find));

	find = 5.0;
	printf("%f's sqrt is: %f\n", find,  mysqrt(find));

	find = 25.0;
	printf("%f's sqrt is: %f\n", find,  mysqrt(find));

	find = 29.0;
	printf("%f's sqrt is: %f\n", find,  mysqrt(find));

	find = 31.0;
	printf("%f's sqrt is: %f\n", find,  mysqrt(find));
	
	find = 0.1;
	printf("%f's sqrt is: %f\n", find,  mysqrt(find));

	return 0;
}

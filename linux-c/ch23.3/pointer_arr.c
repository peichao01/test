#include <stdio.h>

int main(void)
{
	int a[10] = {1,2,3,4};
	int *pa = &a[0];
	pa++;
	
	printf("%d\n", &a);
	
	return 0;
}

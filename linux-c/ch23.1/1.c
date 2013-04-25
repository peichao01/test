#include <stdio.h>

int i = 0;
int *pi = &i;
char c;
char *pc = &c;


int main(void)
{
	*pi = *pi + 10;
	printf("i is:%d\n", i);
	return 0;
}

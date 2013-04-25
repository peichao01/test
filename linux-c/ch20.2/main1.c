/* main.c */
#include <stdio.h>

int main(void)
{
	extern void push(char);
	extern char pop(void);
	extern int is_empty(void);
	extern int top;


	push('a');
	push('b');
	push('c');
	printf("%d\n", top);

	while(!is_empty()){
		putchar(pop());
	}
	putchar('\n');
	printf("%d\n", top);

	return 0;
}

/* stack.c */
/*char stack[512];
int top = -1;*/
//static 关键字使得 变量被声明为：internal linkage，不能被外部模块直接使用
static char stack[512];
static int top = -1;

void push(char c)
{
	stack[++top] = c;
}

char pop(void)
{
	return stack[top--];
}

int is_empty(void)
{
	return top == -1;
}

#include <stdio.h>

void newline(void){
	printf("\n");
}

void threeline(void){
	int i=0;
	for(;i<3;i++){
	//错误： 只允许在 C99 模式下使用‘for’循环初始化声明
	//附注： 使用 -std=c99 或 -std=gnu99 来编译您的代码
	//for(int i=0,len=3;i<len;i++){
		newline();
	}
}

int main(void){
	printf("First Line.\n");
	//newline();
	threeline();
	printf("Second Line.\n");
	return 0;
}

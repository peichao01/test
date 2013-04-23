#include <stdio.h>

int main(void)
{
	int i, j=0;
	char str[] = "hello";
	char revers_str[6];
	for(i=5;i>=0;i--){
		if(str[i]!='\0'){
			revers_str[j++] = str[i];
		}
	}
	printf("%s", revers_str);
	return 0;
}

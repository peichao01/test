#include <stdio.h>
int main(void){
	int x=17, n=4, tmp;
	printf("%d / %d = %d(ceiling)", x, n, (x==(tmp=x/n)*n)?x:(tmp+1)*n) / n;
}

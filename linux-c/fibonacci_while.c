#include <stdio.h>

int fibonacci(int n){
	if(n<0) return -1;
	int result=1, i=0, prev1, prev2;
	while(i<=n){
		if(i==0){
			prev1 = prev2 = 1;
		}else if(i==1){
			prev1 = prev2 = 1;
		}else{
			prev2 = prev1;
			prev1 = result;
			result = prev1 + prev2;
		}
		i++;
	}
}

int main(void){
	int f=4;
	printf("%d's fibonacci is: %d\n", f, fibonacci(f));
	return 0;
}

#include <stdio.h>

int main(void)
{
	int arr[6], tmp, i;
	for(i = 0; i < 6; i++){
		printf("please input array[%d]: ", i);
		scanf("%d", &tmp);
		arr[i] = tmp;
		//printf("\n");
	}
	return 0;
}

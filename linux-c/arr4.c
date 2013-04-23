#include <stdio.h>

int main(void){
	//int a[3][2] = {1,2,3,4,5};
	/*int a[][2] = {
								{1,2},
								{3,4},
								{5,},
							};*/
	//c99
	int a[3][2] = {[0][1] = 9, [2][1] = 8};
	int i,j;
	for(i=0;i<3;i++){
		for(j=0;j<2;j++){
			printf("a[%d][%d]: %d\n", i, j, a[i][j]);
		}
	}
	return 0;
}

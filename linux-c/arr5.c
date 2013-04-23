#include <stdio.h>

struct complex_struct {
	double x, y;
} a[4] = {[0].x = 8.0};

struct no_name {
	double x, y;
	int count[4];
} s = {.count[2]=9};

void print_s(void){
	printf("s.x = %f\n", s.x);
	printf("s.y = %f\n", s.y);
	int i;
	for(i=0;i<4;i++){
		printf("s.count[%d] = %d ", i, s.count[i]);
	}
	printf("\n");
	return;
}

int main(void){
	int i;
	for(i=0;i<4;i++){
		struct complex_struct tmp = a[i];
		printf("a[%d][x] = %f ", i, tmp.x);
		printf("a[%d][y] = %f\n", i, tmp.y);
	}

	print_s();
	return 0;
}

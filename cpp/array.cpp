#include <iostream.h>

int billy[] = {16, 2, 77, 40, 21071};
int n, result = 0;

int main()
{
	for(n=0; n<5; n++) {
		result += billy[n];
	}
	cout << result;
	return 0;
}

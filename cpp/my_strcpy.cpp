#include <iostream.h>

void setstring(char szOut[], char szIn[])
{
	int n=0;
	do{
		szOut[n] = szIn[n];
	}while(szIn[n++] != '\0');
}

int main()
{
	char szMyName[20];
	setstring(szMyName, "J. Soulie");
	cout << szMyName;
	cout << "\n";
	return 0;
}

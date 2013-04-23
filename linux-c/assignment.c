#include <stdio.h>
int main(void){
	char firstletter;
	int hour, minute;
	
	firstletter = 'a';
	hour = 11;
	minute = 59;

	printf("%d:%d is %d minutes after 00:00\n", hour, minute, hour*60+minute);
}

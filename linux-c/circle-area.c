#include <stdio.h>
#include <math.h>

double pi = 3.1415926;

double get_distance(double x1, double y1, double x2, double y2){
	double width = x2 - x1;
	double height = y2 - y1;
	return sqrt(width*width + height*height);
}

double get_area(double radius){
	return pi * radius*radius;
}

int main(void){
	
	double x1 = 10, y1 = 20, x2 = 14, y2 = 28;
	//double radius = stdin("");
	//double radius = 
	double area = get_area(get_distance(x1, y1, x2, y2));
	printf("area is: %f\n", area);
	return area;
}

#include <stdio.h>

int main(void){
	float value;
	printf("please input a float number:\n");
	scanf("%f", &value);
	printf("The input is %f or %e\n", value, value);
	return 0;
}

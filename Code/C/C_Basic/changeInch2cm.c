#include <stdio.h>

int main(void){
	float inch;
	float cm;
	printf("please enter an inch number:\n");
	scanf("%f", &inch);
	cm = inch * 2.54;
	printf("The change result is %.2f inchs = %.2f cm\n", inch, cm);
	return 0;
}

#include <stdio.h>

int main(void){
	printf("your age is:\n");
	int age;
	scanf("%d", &age);
	printf("your age is %d and it has %e secondes\n", age, (float)age * 12 * 30 * 24 * 60 * 60);
	return 0;
}

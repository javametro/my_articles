#include <stdlib.h>
#include <stdio.h>

int main(void){
	int *pint;
	pint = (int *)malloc(sizeof(int));
	
	*pint = 100;
	printf("the number is: %d\n", *pint);
	free(pint);

	return 0;
}

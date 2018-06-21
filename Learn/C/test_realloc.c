#include <stdio.h>
#include <stdlib.h>

int main(){
	double *fDouble;
	int *iInt;
	fDouble = (double *)malloc(sizeof(double));
	printf("%d\n", sizeof(*fDouble));
	iInt = realloc(fDouble, sizeof(int));
	printf("%d\n", sizeof(int));
	return 0;
}

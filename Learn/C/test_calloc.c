#include <stdio.h>
#include <stdlib.h>

int main(){
	int *pArray;
	int i;
	pArray = (int *)calloc(3, sizeof(int));

	for(i=1; i<4; i++){
		*pArray = 10 * i;
		printf("No%d is %d\n", i, *pArray);
		pArray += 1;
	}

	return 0;
}

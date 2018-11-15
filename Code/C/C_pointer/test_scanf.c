#include <stdio.h>

int main(void){
	int  hoge;
	while(scanf("%d", &hoge) != 1){
		printf("input error.please input again.\n");
	}

	return 0;
}

#include <stdio.h>

int main(){
	int input;
	int flag = 1;
	int count = 0;
	scanf("%d",&input);
	printf("input is %d\n", input);
	while(flag){
		if(input & flag){
			count++;
		}
		
		flag <<= 1;
	}

	printf("the number has %d 1 in binary mode.\n", count);
	return 0;
}

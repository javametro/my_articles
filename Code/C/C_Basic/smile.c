#include <stdio.h>

void smile(int n){
	while(n > 0){
		printf("Smile!");
		n--;
	}
	
	printf("\n");
}

int main(){
	smile(3);
	smile(2);
	smile(1);
	return 0;
}

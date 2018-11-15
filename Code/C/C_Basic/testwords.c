#include <stdio.h>

int main(){
	int c;
	while(1){
		if((c = getchar()) != EOF){
			if(c == ' ' || c == '\t' || c == '\n'){
				c = '\n';
			}

			putchar(c);
		}
	}

	return 0;
}

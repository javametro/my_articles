#include <stdio.h>

int main(void){
	int c;
	int oldc;
	while((c = getchar()) != EOF){
		if(c == ' '){
			if(oldc == ' '){
				continue;
			}
			oldc = c;
			
		}

		if(c == '\t'){
			printf("\\t");
			continue;
		}

		if(c == '\b'){
			printf("\\b");
			continue;
		}

		if(c == '\\'){
			printf("\\\\");
			continue;
		}
		oldc = c;
		putchar(c);
	}
	
	return 0;
}

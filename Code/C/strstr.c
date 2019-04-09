#include <stdio.h>
#include <string.h>

char *findStr(char *str1, const char *str2){
	int len = strlen(str2);
	if(len == 0){
		return str1;
	}

	while((*str1) != '\0'){
		if(*str1 == *str2 && strncmp(str1, str2, len) == 0){
			return str1;
		}

		str1++;
	}
}

int main(){
	char aa[] = "I love beijing Tiananmen";
	char bb[] = "beijing";
	
	char *p;
	p = findStr(aa, bb);
	printf("the address of aa is %p\n", aa);
	printf("the address of bb is %p\n", p);

	return 0;
}

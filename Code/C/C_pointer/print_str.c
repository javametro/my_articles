#include <stdio.h>

void func(void){
	char *str = "abc";
	printf("str..%s\n", str);
	str[0] = 'd';
}

int main(){
	func();
	func();
	return 0;
}

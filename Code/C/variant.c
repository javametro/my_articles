#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>

int main(){
	void f(int count, ...);
	f(5, 1, 2, 3, 4, 5);
	f(3, 1, 2, 3);
	system("pause");
	return 0;

}

void f(int count, ...){
	va_list arg;
	int i = 0;
	va_start(arg, count);
	for(i=0; i<count; i++){
		printf("%d\n", va_arg(arg, int));
	}

	va_end(arg);
}

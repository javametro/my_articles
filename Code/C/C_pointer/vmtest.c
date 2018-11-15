#include <stdio.h>

int main(void){
	int hoge;
	char buf[256];
	printf("&host ...%p\n", &hoge);
	fgets(buf, sizeof(buf), stdin);
	sscanf(buf, "%d", &hoge);
	
	for(;;){
		printf("hoge..%d\n", hoge);
		getchar();
		hoge++;
	}

	return 0;
}

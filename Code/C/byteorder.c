#include <stdio.h>

union order{
	short s1;
	char c1[sizeof(short)];
}o1;

int main(){
	o1.s1 = 0x0102;
	if(o1.c1[0] == 1 && o1.c1[1] == 2){
		printf("netword byte order.\n");
	}else if(o1.c1[0] == 2 && o1.c1[1] == 1){
		printf("host byte order.\n");
	}else{
		printf("unknown\n");
	}

	return 0;
}

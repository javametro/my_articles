#include <stdio.h>

struct A{
	char c1;
	int i;
	short s;
	int j;
}a;

struct B{
	int i;
	int j;
	short s;
	char c1;
}b;

int main(){
	printf("%d\n", sizeof(a));
	printf("%d\n", sizeof(b));
	return 0;
}

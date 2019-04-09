#include <stdio.h>
#include <iostream>

void foo(void){
	int a;
	++a;
	printf("%d\n", a);
}

struct X{
	int a;
	char b;
	int c;

	void set_value(int v) {
		a = v;
	}

	int get_value(){
		return a;
	}

	void increase_value(){
		a++;
	}
};

int main(void){
	std::cout << sizeof(X) << std::endl;
	return 0;
}

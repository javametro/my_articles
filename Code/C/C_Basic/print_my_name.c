#include <stdio.h>

int main(void){
	char firstname[] = {"wang"};
	char secondname[] = {"peng"};
	printf("%s %s\n", firstname, secondname);
	printf("%s\n%s\n", firstname, secondname);
	printf("%s ", firstname);
	printf("%s\n ", secondname);
	return 0;
}

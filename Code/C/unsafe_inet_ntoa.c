#include <stdio.h>
#include <sys/socket.h>

int main(){
	char *szValue1 = inet_ntoa("1.2.3.4");
	char *szValue2 = inet_ntoa("10.194.71.60");
	
	printf("address1: %s\n", szValue1);
	printf("address2: %s\n", szValue2);

	return 0;
}

#include <stdio.h>

#define NIPQUAD(addr) \
        ((unsigned char *)&addr)[0], \
        ((unsigned char *)&addr)[1], \
        ((unsigned char *)&addr)[2], \
        ((unsigned char *)&addr)[3]

#define HIPQUAD(addr) \
        ((unsigned char *)&addr)[3], \
        ((unsigned char *)&addr)[2], \
        ((unsigned char *)&addr)[1], \
        ((unsigned char *)&addr)[0]

int main(){
	int ip_addr = 23232;
	char *str_ip;
	sprintf(str_ip, "%u.%u.%u.%u\n", HIPQUAD(ip_addr));
	printf("%u -> %s\n", ip_addr, str_ip);
	return 0;
}

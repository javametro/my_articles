#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
int main(){
	int ipaddr[4];
	int loop = 0;
	int uint32;
	scanf("%d", &uint32);
	if(loop < 4){
		ipaddr[loop] =  uint32 & (255);
		uint32 >> 8;
		loop++;
	}
	
	printf("%d -> %d.%d.%d.%d\n", uint32, ipaddr[0], ipaddr[1], ipaddr[2], ipaddr[3]);
	return 0;
}


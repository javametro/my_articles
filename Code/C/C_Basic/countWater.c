#include <stdio.h>

int main(void){
	printf("input the kuatuo water:\n");
	int kuatuo;
	scanf("%d", &kuatuo);
	double waters = 0;
	waters = kuatuo * 950 / (3.0e-23);
	printf("%d kuatuo is %e waters\n", kuatuo, waters);
	return 0;
}

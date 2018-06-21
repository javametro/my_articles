#include <stdio.h>
#include <stdlib.h>

#define NUMS 50
#define KTH 18
#define NEWLINENUMBS 10

void generatenumbers(int arr[], int n);

void generatenumbers(int arr[], int n){
	int i = 0;
	for(; i<n; i++){
		arr[i] = random() % n;
	}
}

void printArrays(int arr[], int n){
	int i = 1;
	for(; i<=n; i++){
		printf("%d ", arr[i-1]);

		if(i % NEWLINENUMBS == 0){
			printf("\n");
		}
	}

}

void swap(int *a, int *b){
	int temp = *a;
	*a = *b;
	*b = temp;
}

void BubbleSort(int arr[], int n){
	int i;
	int j;
	
	for(i=0; i<n; i++){
		for(j=0; j<n-i-1; j++){
			if(arr[j] > arr[j+1]){
				swap(&arr[j], &arr[j+1]);
			}
		}
	}
}

void FindKthInNumbers(int arr[], int k){
	printf("The %dth number is %d\n", k, arr[k-1]);
}

int main(void){
	int arr[NUMS];
	generatenumbers(arr, NUMS);
	printArrays(arr, NUMS);
	BubbleSort(arr, NUMS);
	printArrays(arr, NUMS);
	FindKthInNumbers(arr, KTH);
	return 0;
}

#include <stdio.h>
#include <malloc.h>
#define STACK_SIZE 100

typedef struct Stack{
	int top;
	int array[STACK_SIZE];

}Stack;

Stack S;

int Init_Stack(){
	S.top = 0;
	return 1;
}

int IsEmpty(){
	if(S.top == 0){
		return 1;
	}else{
		return 0;
	}
}

int Push(int e){
	S.top++;
	S.array[S.top] = e;
	return S.top;
}

int Pop(){
	S.top--;
	return S.array[S.top + 1];
}

void main(){
	int i = 0, j = 0;
	Init_Stack();
	for(; i<=5; i++){
		Push(i);
	}

	for(i=0; i<=5; i++){
		j = Pop();
		printf("[%d]", j);
	}
	
	getchar();
}

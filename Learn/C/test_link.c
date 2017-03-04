#include <stdio.h>
#define NULL 0
struct Student{
	int iNumber;
	float score;
	struct Student *pNext;
};

int main(){
	struct Student stu1, stu2, stu3, *head, *p;
	stu1.iNumber = 101;
	stu1.score = 97;
	stu2.iNumber = 102;
	stu3.iNumber = 103;
	stu2.score = 89.5;
	stu3.score = 78;

	head = &stu1;
	p = head;

	stu1.pNext = &stu2;
	stu2.pNext = &stu3;
	stu3.pNext = NULL;

	do{
		printf("%d%5.1f\n", p->iNumber, p->score);
		p = p->pNext;
	}while(p != NULL);

	return 0;
}

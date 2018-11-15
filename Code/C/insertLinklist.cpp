#include <iostream>
#define NULL 0
using namespace std;

struct student{
	int num;
	student *next;
};

int n;

student *creat(int m){
	student *head, *p1, *p2;
	p1 = p2 = new student;
	cin>>p1->num;
	head = NULL;
	n = 0;
	while(p1->num != NULL){
		n = n + 1;
		if(n == 1){
			head = p1;
		}else{
			p2->next = p1;
		}
	
		p2 = p1;
		p1 = new student;
		if(n == m){
			break;
		}else{
			cin>>p1->num;
		}
	}

	p2->next = NULL;
	return(head);
}

void print(student *head){
	student *p;
	p = head;
	if()
}

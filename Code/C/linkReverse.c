#include <stdio.h>
#include <stdlib.h>

#define LINK_LENGTH 15

typedef struct _node{
	int data;
	struct _node *next;
}node, *linklist;

linklist create_linklist(){
	linklist H;
	node *r, *s;
	int i;
	H = (linklist)malloc(sizeof(node));
	H->next = NULL;
	r = H;
	for(i=0; i<LINK_LENGTH; i++){
		s = (linklist)malloc(sizeof(node));
		s->data = i + 1;
		r->next = s;
		r = s;
	}

	r->next = NULL;
	return H;
}

void print_linklist(linklist pnode){
	linklist ptmp;
	ptmp = pnode->next;
	while(ptmp->next != NULL){
		printf("%d ", ptmp->data);
		ptmp = ptmp->next;
	}

	printf("\n");
}

linklist reverse_linklist(linklist head){
	linklist p1, p2;
	p1 = head;
	p2 = p1->next;
	head->next = NULL;
	
	if(p2 == NULL){
		return p2;
	}

	while(p2){
		p1 = p2;
		p2 = p2->next;
		p1->next = head;
		head = p1;
	}

	return head;
}


linklist recursion_reverse_linklist(linklist head){
	if(!head || !head->next){
		return head;
	}

	linklist newhead = recursion_reverse_linklist(head->next);
	head->next->next = head;
	head->next = NULL;

	return newhead;
}

int main(){
	linklist Head;
	Head = create_linklist();
	printf("before reverse:\n");
	print_linklist(Head);

	Head = reverse_linklist(Head);
	printf("after reverse:\n");
	print_linklist(Head);

	Head = recursion_reverse_linklist(Head);
	printf("again reverse:\n");
	print_linklist(Head);

	return 0;
}

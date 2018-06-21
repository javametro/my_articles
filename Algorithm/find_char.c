#include <stdio.h>
#include <assert.h>
#define TRUE 1
#define FALSE 0

int find_char(char **strings, char value){
	char *string;

	while((string = *strings++) != NULL){
		if(*string++ == value){
			return TRUE;
		}
	}

	return FALSE;
}


int find_char2(char **string, int value){
	assert(strings != NULL);

	while(*strings != NULL){
		while(**strings != '\0'){
			if(*(*strings)++ == value)
				return TRUE;
		}

		strings++;
	}

	return FALSE;
}

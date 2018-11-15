#include <stdio.h>

int main(){
	int c;
	int nSpace = 0;
	int nTab = 0;
	int nNewline = 0;
	while((c = getchar()) != EOF){
		if(isSpace(c)){
			nSpace++;	
		}else if(isTab(c)){
			nTab++;
		}else if(isNewline(c)){
			nNewline++;
		}else{
			;
		}
	}	

	printf("your input has %d space, %d tab, %d newline character!\n",
		nSpace, nTab, nNewline);
	
	return 0;
}

int isSpace(int c){
	if(c == ' '){
		return 1;
	}
	
	return 0;
}

int isTab(int c){
	if(c == '\t'){
		return 1;
	}
	
	return 0;
}

int isNewline(int c){
	if(c == '\n'){
		return 1;
	}

	return 0;
}

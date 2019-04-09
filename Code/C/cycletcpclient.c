#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>
#include <netdb.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <sys/socket.h>

#define MAXDATASIZE 100

int main(int argc, char *argv[]){
	int sockfd, numbytes;
	char buf[MAXDATASIZE];
	struct hostent *he;
	struct sockaddr_in their_addr;
	unsigned int myport;
	if(argv[2]){
		myport = atoi(argv[2]);
	}else{
		myport = 7838;
	}

	if(argc != 3){
		fprintf(stderr, "usage:%s from hostname port\n", argv[0]);
		exit(1);
	}

	if((he = gethostbyname(argv[1])) == NULL){
		herror("gethostbyname");
		exit(1);
	}

	if((sockfd = socket(PF_INET, SOCK_STREAM, 0)) == -1){
		perror("socket");
		exit(1);
	}

	their_addr.sin_family = PF_INET;
	their_addr.sin_port = htons(myport);
	their_addr.sin_addr = *((struct in_addr *)he->h_addr);
	bzero(&(their_addr.sin_zero), 0);
	
	if(connect(sockfd, (struct sockaddr*)&their_addr, sizeof(struct sockaddr)) == -1){
		perror("connect");
		exit(1);
	}
	
	if((numbytes = recv(sockfd, buf, MAXDATASIZE, 0)) == -1){
		perror("recv");
		exit(1);
	}

	buf[numbytes] = 0;
	printf("Received:%s\n", buf);
	close(sockfd);
	return 0;
}

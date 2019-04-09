#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <sys/wait.h>

int main(int argc, char **argv){
	int sockfd, new_fd;
	struct sockaddr_in my_addr;
	struct sockaddr_in their_addr;
	unsigned int sin_size, myport, lisnum;
	
	if(argv[1]){
		myport = atoi(argv[1]);
	}else{
		myport = 7838;
	}

	if(argv[2]){
		lisnum = atoi(argv[2]);
	}else{
		lisnum = 2;
	}

	if((sockfd = socket(PF_INET, SOCK_STREAM, 0)) == -1){
		perror("socket");
		exit(1);
	}

	my_addr.sin_family = PF_INET;
	my_addr.sin_port = htons(myport);
	my_addr.sin_addr.s_addr = INADDR_ANY;
	bzero(&(my_addr.sin_zero), 0);
	if(bind(sockfd, (struct sockaddr *)&my_addr, sizeof(struct sockaddr)) == -1){
		perror("bind");
		exit(1);
	}

	if(listen(sockfd, lisnum) == -1){
		perror("listen");
		exit(1);
	}

	while(1){
		sin_size = sizeof(struct sockaddr_in);
		if((new_fd = accept(sockfd, (struct sockaddr *)&their_addr, &sin_size)) == -1){
			perror("accept");
			continue;
		}

		printf("server: got connection from %s\n", inet_ntoa(their_addr.sin_addr));
		if(!fork()){
			if(send(new_fd, "Hello world.\n", 14, 0) == -1){
				perror("send");
				close(new_fd);
				exit(0);
			}
		}

		close(new_fd);
		waitpid(-1, NULL, WNOHANG);
	}
}

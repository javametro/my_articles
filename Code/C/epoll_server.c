#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>
#include <sys/types.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <sys/wait.h>
#include <unistd.h>
#include <arpa/inet.h>
#include <fcntl.h>
#include <sys/epoll.h>
#include <sys/time.h>
#include <sys/resource.h>

#define MAXBUF 1024
#define MAXEPOLLSIZE 10000


int setnonblocking(int sockfd){
	if(fcntl(sockfd, F_SETFL, fcntl(sockfd, F_GETFL, 0) | O_NONBLOCK) == -1){
		return -1;
	}

	return 0;
}

int handle_message(int new_fd){
	char buf[MAXBUF + 1];
	int len;
	bzero(buf, MAXBUF+1);
	len = recv(new_fd, buf, MAXBUF, 0);
	if(len > 0){
		printf("%d receive message succeed: '%s', %d bytes message in total\n", new_fd, buf, len);
	}else{
		if(len < 0){
			printf("receive message failed. errno is %d, error message is '%s'\n");
		}

		close(new_fd);
		return -1;
	}
	
	return len;
}


int main(int argc, int **argv){
	int listener, new_fd, nfds, n, ret, curfds, kdpfd;
	socklen_t len;
	struct sockaddr_in my_addr, their_addr;
	unsigned int myport, lisnum;
	struct epoll_event ev;
	struct epoll_event events[MAXEPOLLSIZE];
	struct rlimit rt;
	
	if(argv[1]){
		myport = atoi(argv[1]);
	}else{
		myport = 7938;
	}

	if(argv[2]){
		lisnum = atoi(argv[2]);
	}else{
		lisnum = 2;
	}

	rt.rlim_max = rt.rlim_cur = MAXEPOLLSIZE;
	if(setrlimit(RLIMIT_NOFILE, &rt) == -1){
		perror("setrlimit");
		exit(1);
	}else{
		printf("set the resource succeed!\n");
	}

	if((listener = socket(PF_INET, SOCK_STREAM, 0)) == -1){
		perror("socket");
		exit(1);
	}else{
		printf("socket create success.\n");
	}

	setnonblocking(listener);
	bzero(&my_addr, sizeof(my_addr));
	my_addr.sin_family = PF_INET;
	my_addr.sin_port = htons(myport);
	if(argv[3]){
		my_addr.sin_addr.s_addr = inet_addr(argv[3]);
	}else{
		my_addr.sin_addr.s_addr = INADDR_ANY;
	}

	if(bind(listener, (struct sockaddr *)&my_addr, sizeof(struct sockaddr)) == -1){
		perror("bind");
		exit(1);
	}else{
		printf("service start.\n");
	}

	kdpfd = epoll_create(MAXEPOLLSIZE);
	len = sizeof(struct sockaddr_in);
	ev.events = EPOLLIN | EPOLLET;
	ev.data.fd = listener;
	if(epoll_ctl(kdpfd, EPOLL_CTL_ADD, listener, &ev) < 0){
		fprintf(stderr, "epoll set listener error. fd = %d\n", listener);
		return -1;
	}else{
		printf("monitor socket to epoll success\n");
	}

	curfds = 1;
	while(1){
		nfds = epoll_wait(kdpfd, events, curfds, -1);
		if(nfds == -1){
			perror("epoll_wait");
			break;
		}
		
		for(n=0; n<nfds; ++n){
			if(events[n].data.fd == listener){
				new_fd = accept(listener, (struct sockaddr *)&their_addr, (addr_len *)&len);
				if(new_fd < 0){
					perror("accept");
					continue;
				}else{
					printf("connect from: %d:%d,  the sockfd is %d\n", inet_ntoa(their_addr.sin_addr), ntohs(their_addr.sin_port), new_fd);
				}

				setnonblocking(new_fd);
				ev.events = EPOLLIN | EPOLLET;
				ev.data.fd = new_fd;
				if(epoll_ctl(kdpfd, EPOLL_CTL_ADD, new_fd, &ev) < 0){
					fprintf(stderr, "add socket %d to epoll failed. %s\n", new_fd, strerror(errno));
					return -1;
				}

					curfds++;
			}else{
				ret = handle_message(events[n].data.fd);
				if(ret < 1 && errno != 11){
					epoll_ctl(kdpfd, EPOLL_CTL_DEL, events[n].data.fd, &ev);
					curfds--;
				}
			}
		}
	}

	close(listener);
	return 0;
}

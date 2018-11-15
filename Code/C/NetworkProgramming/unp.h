/* OUr own header */
#ifndef __unp_h
#define __unp_h
#endif
#include "config.h"

/* if anything changes in the following list of #include, must change
 * acsite.m4 also, for configure's test */

#include <sys/types.h>
//#include <sys/socket.h>
#include <sys/time.h>
#include <time.h>
//#include <netinet/in.h>
//#include <arpa/inet.h>
#include <errno.h>
#include <fcntl.h>
//#include <netdb.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <sys/uio.h>
//#include <unistd.h>
#include <sys/wait.h>
//#include <sys/un.h>

#ifdef HAVE_SYS_SELECT_H
#include <sys/select.h>
#endif

#ifdef HAVE_POLL_H
#include <poll.h>
#endif

#ifdef HAVE_STRINGS_H
#include <strings.h>
#endif

/* Three headers are normally needed for socket/file ioctl's:
 * <sys/ioctl.h>, <sys/fifo.h>, and <sys/sockio.h>
 */

#ifdef HAVE_SYS_IOCTL_H
#include <sys/ioctl.h>
#endif

//#ifdef HAVE_SYS_FILIO_H
//#include <sys/filio.h>
//#endif

//#ifdef HAVE_SYS_SOCKIO_H
//#include <sys/sockio.h>
//#endif

#ifdef HAVE_PTHREAD_H
#include <pthread.h>
#endif

/* OSF/1 actually disables recv() and send() in <sys/socket.h> */
#ifdef __osf__
#undef recv
#undef send
#define recv(a, b, c, d) recvfrom(a, b, c, d, 0, 0)
#define send(a, b, c, d) sendto(a, b, c, d, 0, 0)
#endif

#ifndef INADDR_NONE
#define INADDR_NONE 0xffffffff
#endif

#ifndef SHUT_RD
#define SHUT_RD 0
#define SHUT_WR 1
#define SHUT_RDWR 2
#endif

#ifndef INET_ADDRSTRLEN
#define INET_ADDRSTRLEN
#endif

/* Define following even if IPv6 not supported, so we can always allocate
 * an adequately-sized buffer, without #ifdef in the code. */

#ifndef INET6_ADDRSTRLEN
#define INET6_ADDRSTRLEN 46
/* max size of Ipv6 address string:
 * "xxxx:xxxx:xxxx:xxxx:xxxx:xxxx:xxxx:xxxx" or
 * "xxxx:xxxx:xxxx:xxxx:xxxx:ddd:ddd:ddd:ddd\0"
 * 1234567890123456789012345678901234567890123456 */
#endif

/* Define bzero() as a macro if it's not in standard C library */
#ifndef HAVE_BZERO
#define bzero(ptr, n) memset(ptr, 0, n)
#endif

/* older resovers do not have gethostbyname2() */
#ifndef HAVE_GETHOSTBYNAME2
#define gethostbyname2(host, family)
#endif

/* The structure returned by recvfrom_flags() */
//struct in_pktinfo{
//	struct in_addr ipi_addr;
//	int ipi_ifindex;
//};

/* We need the newer CMSG_LEN() and CMSG_SPACE() macros, but few
 * implementations support them today. These two macros really need
 * an ALIGN() macro, but each implementation does this differently */
#ifndef CMSG_LEN
#define CMSG_LEN(size) (sizeof(struct cmsghdr) + (size))
#endif

#ifndef CMSG_SPACE
#define CMSG_SPACE(size) (sizeof(struct cmsghdr) + (size))
#endif

/* Posix.1g requires the SUN_LEN() macro but not all implementations define
 * if(yet). Note that this 4.4 BSD macro works regardless whether there is a
 * length field or not */
#ifndef SUN_LEN
#define SUN_LEN(su) (sizeof(*(su)) - sizeof((su)->su_path) + strlen((su)->sun_path)
#endif

/* posix.1g renames "Unix domain" as "local IPC"
 * But not all systems define AF_LOCAL and PF_LOCAL(yet).*/
#ifndef AF_LOCAL
#define AF_LOCAL AF_UNIX
#endif

#ifndef PF_LOCAL
#define PF_LOCAL PF_UNIX
#endif

/* Posix.1g requires that an #include of <poll.h> define INFTIM, but many
 * systems still define it in <sys/stropts.h>. We don't want to include
 * all the streams stuff if it's not needed, so we just define INFTIM here.
 * This is the standard value, but there's no gurantee it it -1. */
#ifndef INFTIM
#define INFTIM (-1)
#ifdef HAVE_POLL_H
#define INFTIM_UNPH
#endif
#endif

/* Following could be derived from SOMAXCONN in <sys/socket.h>, but many
 * kernels still #define it as 5, while actually supporting many more */
#define LISTENQ 1024 /* 2nd argument to listen() */

/* miscellaneous constants */
#define MAXLINE 4096 /* max text line length */
#define MAXSOCKADDR 128 /* max socket address structure size */
#define BUFFSIZE 8192 /* buffer size for reads and writes */

/* Define some port number that can be used for client-servers */
#define SERV_PORT 9877 /* TCP and UDP client-servers */
#define SERV_PORT_STR "9877" /* TCP and UDP client-servers */
#define UNIXSTR_PATH "/tmp/unix.str" /* unix domain stream cli-serv */
#define UNIXDG_PATH "/tmp/unix.dg" /* Unix domain datagram cli-serv */

/* Following shortens all the type casts of pointer arguments */
#define SA struct sockaddr
#define FILE_MODe (S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH)
	/* default file access permissions for new files */
#define FILE_MODE (FILE_MODE | S_IXUSR | S_IXGRP | S_IXOTH)
	/* default permissions for new directories */

typedef void Sigfunc(int); /* for signal handers */
#define min(a, b) ((a) < (b) ? (a) : (b))
#define max(a, b) ((a) > (b) ? (a) : (b))

//#define HAVE_ADDRINFO_STRUCT
//#include "../lib/addrinfo"
//#endif

#ifndef HAVE_IF_NAMEINDEX_STRUCT
struct if_nameindex{
	unsigned int if_index;
	char *if_name; /* null terminated name: "le0", ... */
};
#endif

#ifndef HAVE_TIMESPEC_STRUCT
struct timespec{
	time_t tv_sec;
	long tv_nsec;
};
#endif



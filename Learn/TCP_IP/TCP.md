TCP
面向连接，字节流，可靠传输，没有边界

拥塞控制

超时重传

定时器

| Tcp header | 
| ---------- |
| 16 bit source port | 16 bit destination port | 
| 32 bit sequence number | 
| 32 bit acknowledge number | 
| 4 bit header length | 6 bit reserve | URG | ACK | PSH | RST | SYN | FIN | 16 bit window size |
| 16 bit checksum | 16 bit urgent pointer | 
| option |

半关闭状态

命令nc

socket选项
SO_REUSEADDR
SO_LINGER

交互数据，成块数据

Nagle算法

<TCP/IP 详解， 卷1：协议>
<Unix网络编程， 卷1：套接字联网API>
<Unix网络编程， 卷2：进程间通信>

	TCP端口号	UDP端口号
echo 7			7
discard	9		9
daytime 13		13
chargen	19		19
time	37		37

路径MTU： 路径中最小的MTU


IP： 不可靠，无连接
不能保证数据报能成功到达目的地，仅提供最好的传输服务
不维护任何关于后续数据报的状态信息，每个数据报的处理是相互独立的

IP首部：20字节
4位版本，4位首部长度，8位服务类型（TOS），16位总长度
16位标识符， 3位标志， 13位片偏移
8位生存时间，8位协议，16位首部校验和
32位源IP
32位目的IP
选项（如有）
数据。。。

网络字节序： big endian

以太网最小帧长度 46 ~ 1500

Disutils


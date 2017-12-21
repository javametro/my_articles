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

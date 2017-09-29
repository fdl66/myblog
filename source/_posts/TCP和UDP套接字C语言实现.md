---
title: TCP和UDP套接字C语言实现
date: 2017-03-28 12:03:47
tags: [ 网络,作业 ]
categories: 网络
---
# 字符串传输
## TCP
### 客户端
```
#include 
#include 
#include 
#include 
#include 
#include 
#include 
#include 
#include 
#include 

#define MYPORT  8887
#define BUFFER_SIZE 1024

int main()
{
    ///定义sockfd
    int sock_cli = socket(AF_INET,SOCK_STREAM, 0);

    ///定义sockaddr_in
    struct sockaddr_in servaddr;
    memset(&servaddr, 0, sizeof(servaddr));
    servaddr.sin_family = AF_INET;
    servaddr.sin_port = htons(MYPORT);  ///服务器端口
    servaddr.sin_addr.s_addr = inet_addr("127.0.0.1");  ///服务器ip

    ///连接服务器，成功返回0，错误返回-1
    if (connect(sock_cli, (struct sockaddr *)&servaddr, sizeof(servaddr)) < 0)
    {
        perror("connect");
        exit(1);
    }

    char sendbuf[BUFFER_SIZE];
    char recvbuf[BUFFER_SIZE];
    while (fgets(sendbuf, sizeof(sendbuf), stdin) != NULL)
    {
        send(sock_cli, sendbuf, strlen(sendbuf),0); ///发送
        if(strcmp(sendbuf,"exit\n")==0)
            break;
        recv(sock_cli, recvbuf, sizeof(recvbuf),0); ///接收
        fputs(recvbuf, stdout);

        memset(sendbuf, 0, sizeof(sendbuf));
        memset(recvbuf, 0, sizeof(recvbuf));
    }

    close(sock_cli);
    return 0;
}

```
### 服务端
```
#include 
#include 
#include 
#include 
#include 
#include 
#include 
#include 
#include 
#include 

#define MYPORT  8887
#define QUEUE   20
#define BUFFER_SIZE 1024

int main()
{
    ///定义sockfd
    int server_sockfd = socket(AF_INET,SOCK_STREAM, 0);

    ///定义sockaddr_in
    struct sockaddr_in server_sockaddr;
    server_sockaddr.sin_family = AF_INET;
    server_sockaddr.sin_port = htons(MYPORT);
    server_sockaddr.sin_addr.s_addr = htonl(INADDR_ANY);

    ///bind，成功返回0，出错返回-1
    if(bind(server_sockfd,(struct sockaddr *)&server_sockaddr,sizeof(server_sockaddr))==-1)
    {
        perror("bind");
        exit(1);
    }

    ///listen，成功返回0，出错返回-1
    if(listen(server_sockfd,QUEUE) == -1)
    {
        perror("listen");
        exit(1);
    }

    ///客户端套接字
    char buffer[BUFFER_SIZE];
    struct sockaddr_in client_addr;
    socklen_t length = sizeof(client_addr);

    ///成功返回非负描述字，出错返回-1
    int conn = accept(server_sockfd, (struct sockaddr*)&client_addr, &length);
    if(conn<0)
    {
        perror("connect");
        exit(1);
    }

    while(1)
    {
        memset(buffer,0,sizeof(buffer));
        int len = recv(conn, buffer, sizeof(buffer),0);
        if(strcmp(buffer,"exit\n")==0)
            break;
        fputs(buffer, stdout);
        for(int i=0;i<len;i++){
            if(buffer[i]>=97&&buffer[i]<=122)buffer[i]-=32;
        }
        send(conn, buffer, len, 0);
    }
    close(conn);
    close(server_sockfd);
    return 0;
}

```
### 运行截图
tcp_client:

![client](http://function.dearamaze.com/tcp_c.png)

tcp_server:

![server](http://function.dearamaze.com/tcp_s.png)

## UDP
### 客户端
```
#include 
#include 
#include 
#include 
#include 

#define SERVER_PORT 8888
#define BUFF_LEN 512
#define SERVER_IP "172.0.5.182"


void udp_msg_sender(int fd, struct sockaddr* dst)
{

    socklen_t len;
    char sendbuf[BUFF_LEN];
    char recvbuf[BUFF_LEN];
    struct sockaddr_in src;
    while(fgets(sendbuf,sizeof(sendbuf),stdin)!=NULL){
        len=sizeof(*dst);
        sendto(fd,sendbuf,BUFF_LEN,0,dst,len);
        if(strcmp(sendbuf,"exit\n")==0)break;
        recvfrom(fd,recvbuf,BUFF_LEN,0,(struct sockaddr*)&src,&len);
        fputs(recvbuf,stdout);

        memset(sendbuf,0,sizeof(sendbuf));
        memset(recvbuf,0,sizeof(recvbuf));
    }
}

/*
    client:
            socket-->sendto-->revcfrom-->close
*/

int main(int argc, char* argv[])
{
    int client_fd;
    struct sockaddr_in ser_addr;

    client_fd = socket(AF_INET, SOCK_DGRAM, 0);
    if(client_fd < 0)
    {
        printf("create socket fail!\n");
        return -1;
    }

    memset(&ser_addr, 0, sizeof(ser_addr));
    ser_addr.sin_family = AF_INET;
    //ser_addr.sin_addr.s_addr = inet_addr(SERVER_IP);
    ser_addr.sin_addr.s_addr = htonl(INADDR_ANY);  //注意网络序转换
    ser_addr.sin_port = htons(SERVER_PORT);  //注意网络序转换

    udp_msg_sender(client_fd, (struct sockaddr*)&ser_addr);

    close(client_fd);

    return 0;
}

```
### 服务端
```
#include 
#include 
#include 
#include 
#include 

#define SERVER_PORT 8888
#define BUFF_LEN 1024

void handle_udp_msg(int fd)
{
    char buf[BUFF_LEN];  //接收缓冲区，1024字节
    socklen_t len;
    int count;
    struct sockaddr_in clent_addr;  //clent_addr用于记录发送方的地址信息
    while(1)
    {
        memset(buf, 0, BUFF_LEN);
        len = sizeof(clent_addr);
        count = recvfrom(fd, buf, BUFF_LEN, 0, (struct sockaddr*)&clent_addr, &len);  //recvfrom是拥塞函数，没有数据就一直拥塞
        if(count == -1)
        {
            printf("recieve data fail!\n");
            return;
        }
        if(strcmp(buf,"exit\n")==0)break;
        fputs(buf,stdout);
        for(int i=0;i<count;i++){
            if(buf[i]>=97&&buf[i]<=122)buf[i]-=32;
        }
        sendto(fd, buf, BUFF_LEN, 0, (struct sockaddr*)&clent_addr, len);  //发送信息给client，注意使用了clent_addr结构体指针

    }
}


/*
    server:
            socket-->bind-->recvfrom-->sendto-->close
*/

int main(int argc, char* argv[])
{
    int server_fd, ret;
    struct sockaddr_in ser_addr; 

    server_fd = socket(AF_INET, SOCK_DGRAM, 0); //AF_INET:IPV4;SOCK_DGRAM:UDP
    if(server_fd < 0)
    {
        printf("create socket fail!\n");
        return -1;
    }

    memset(&ser_addr, 0, sizeof(ser_addr));
    ser_addr.sin_family = AF_INET;
    ser_addr.sin_addr.s_addr = htonl(INADDR_ANY); //IP地址，需要进行网络序转换，INADDR_ANY：本地地址
    ser_addr.sin_port = htons(SERVER_PORT);  //端口号，需要网络序转换

    ret = bind(server_fd, (struct sockaddr*)&ser_addr, sizeof(ser_addr));
    if(ret < 0)
    {
        printf("socket bind fail!\n");
        return -1;
    }

    handle_udp_msg(server_fd);   //处理接收到的数据

    close(server_fd);
    return 0;
}

```
### 运行截图
udp_client

![client](http://function.dearamaze.com/udp_c.png)

udp_server
![server](http://function.dearamaze.com/udp_s.png)

# 文件传输
## TCP
### 客户端
```
#include  
#include  
#include  
#include  
#include  
#include  
#include  
#include  
#include  
#include  
  
#define MAXLINE 1024 
  
void usage(char *command) 
{ 
    printf("usage :%s ipaddr portnum filename\n", command); 
    exit(0); 
} 
int main(int argc,char **argv) 
{ 
    struct sockaddr_in serv_addr; 
    char buf[MAXLINE]; 
    int sock_id; 
    int read_len; 
    int send_len; 
    FILE *fp; 
    int i_ret; 
     
    if (argc != 4) { 
        usage(argv[0]); 
    } 
      
    /* open the file to be transported commented by guoqingbo*/ 
    if ((fp = fopen(argv[3],"r")) == NULL) { 
        perror("Open file failed\n"); 
        exit(0); 
    } 
      
    /* create the socket commented by guoqingbo*/ 
    if ((sock_id = socket(AF_INET,SOCK_STREAM,0)) < 0) { 
        perror("Create socket failed\n"); 
        exit(0); 
    } 
      
    memset(&serv_addr, 0, sizeof(serv_addr)); 
    serv_addr.sin_family = AF_INET; 
    serv_addr.sin_port = htons(atoi(argv[2])); 
    inet_pton(AF_INET, argv[1], &serv_addr.sin_addr); 
     
    /* connect the server commented by guoqingbo*/ 
    i_ret = connect(sock_id, (struct sockaddr *)&serv_addr, sizeof(struct sockaddr)); 
    if (-1 == i_ret) { 
        printf("Connect socket failed\n"); 
       return -1; 
    } 
      
    /* transported the file commented by guoqingbo*/ 
    bzero(buf, MAXLINE); 
    while ((read_len = fread(buf, sizeof(char), MAXLINE, fp)) >0 ) { 
        send_len = send(sock_id, buf, read_len, 0); 
        if ( send_len < 0 ) { 
            perror("Send file failed\n"); 
            exit(0); 
        } 
        bzero(buf, MAXLINE); 
    } 
  
    fclose(fp); 
    close(sock_id); 
    printf("Send Finish\n"); 
    return 0; 
}

```
### 服务端
```
#include  
#include  
#include  
#include  
#include  
#include  
#include  
#include  
#include  
  
#define MAXLINE 1024 
  
void usage(char *command) 
{ 
    printf("usage :%s portnum filename\n", command); 
    exit(0); 
} 
int main(int argc,char **argv) 
{ 
    struct sockaddr_in serv_addr; 
    struct sockaddr_in clie_addr; 
    char buf[MAXLINE]; 
    int sock_id; 
    int link_id; 
    int recv_len; 
    int write_leng; 
    int clie_addr_len; 
    FILE *fp; 
  
    if (argc != 3) { 
        usage(argv[0]); 
    } 
    if ((fp = fopen(argv[2], "w")) == NULL) { 
        perror("Open file failed\n"); 
        exit(0); 
    } 
    if ((sock_id = socket(AF_INET, SOCK_STREAM, 0)) < 0) { 
        perror("Create socket failed\n"); 
        exit(0); 
    } 
    /*fill the server sockaddr_in struct commented by guoqingbo*/ 
    memset(&serv_addr, 0, sizeof(serv_addr)); 
    serv_addr.sin_family = AF_INET; 
    serv_addr.sin_port = htons(atoi(argv[1])); 
    serv_addr.sin_addr.s_addr = htonl(INADDR_ANY); 
  
    if (bind(sock_id, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0 ) { 
        perror("Bind socket failed\n"); 
        exit(0); 
    } 
  
    if (-1 == listen(sock_id, 10)) { 
        perror("Listen socket failed\n"); 
        exit(0); 
    } 
    /* server part commented by guoqingbo*/ 
    while (1) { 
        clie_addr_len = sizeof(clie_addr); 
        link_id = accept(sock_id, (struct sockaddr *)&clie_addr, &clie_addr_len); 
        if (-1 == link_id) { 
            perror("Accept socket failed\n"); 
            exit(0); 
        } 
        bzero(buf, MAXLINE); 
        while (recv_len = recv(link_id, buf, MAXLINE, 0)) { 
            /* receiver data part commented by guoqingbo*/ 
            if(recv_len < 0) { 
                printf("Recieve Data From Server Failed!\n"); 
                break; 
            } 
            printf("#"); 
            write_leng = fwrite(buf, sizeof(char), recv_len, fp); 
            if (write_leng < recv_len) { 
                printf("Write file failed\n"); 
                break; 
            } 
            bzero(buf,MAXLINE); 
        } 
        printf("\nFinish Recieve\n"); 
        fclose(fp); 
        close(link_id); 
    } 
    close(sock_id); 
    return 0; 
}

```
### 截图
tcp_file_client

![tcp_file_client](http://function.dearamaze.com/tcp_file_client.png)

tcp_file_servier

![tcp_file_servier](http://function.dearamaze.com/tcp_file_server.png)


## UDP
### 客户端
```
#include  
#include  
#include  
#include  
#include  
#include  
#include  
#include  
#include  
#include  
  
#define FINISH_FLAG "FILE_TRANSPORT_FINISH" 
#define MAXLINE 1024 
  
void usage(char *command) 
{ 
    printf("usage :%s ipaddr portnum filename\n", command); 
    exit(0); 
} 
int main(int argc,char **argv) 
{ 
    FILE *fp; 
    struct sockaddr_in serv_addr; 
    char buf[MAXLINE]; 
    int sock_id; 
    int read_len; 
    int send_len; 
    int serv_addr_len; 
    int i_ret; 
    int i; 
  
    if (argc != 4) { 
        usage(argv[0]); 
    } 
    /* open the file to be transported commanted by guoqingbo*/ 
    if ((fp = fopen(argv[3],"r")) == NULL) { 
        perror("Open file failed\n"); 
        exit(0); 
    } 
    /* create the socket commanted by guoqingbo*/ 
    if ((sock_id = socket(AF_INET, SOCK_DGRAM, 0)) < 0) { 
        perror("Create socket failed"); 
        exit(0); 
    } 
    memset(&serv_addr,0,sizeof(serv_addr)); 
    serv_addr.sin_family = AF_INET; 
    serv_addr.sin_port = htons(atoi(argv[2])); 
    inet_pton(AF_INET, argv[1], &serv_addr.sin_addr); 
    serv_addr_len = sizeof(serv_addr); 
    /* connect the server commanted by guoqingbo*/ 
    i_ret = connect(sock_id, (struct sockaddr *)&serv_addr, sizeof(struct sockaddr)); 
    if (-1 == i_ret) { 
        perror("Connect socket failed!\n"); 
        exit(0); 
    } 
    /* transport the file commented by guoqingbo*/ 
    bzero(buf, MAXLINE); 
    while ( (read_len = fread(buf, sizeof(char), MAXLINE, fp)) > 0 ) { 
        send_len = send(sock_id, buf, read_len, 0); 
        if ( send_len < 0 ) { 
            perror("Send data failed\n"); 
            exit(0); 
        } 
        bzero(buf, MAXLINE); 
    } 
    fclose(fp); 
    /* send the end_flag commented by guoqingbo*/ 
    bzero(buf, MAXLINE); 
    strcpy(buf, FINISH_FLAG); 
    buf[strlen(buf)] = '\0'; 
    for (i = 1000; i>0; i--) { 
        send_len = send(sock_id, buf, strlen(buf)+1, 0); 
        if ( send_len < 0 ) { 
            printf("Finish send the end string\n"); 
            break; 
        } 
    } 
    close(sock_id); 
    printf("Send finish\n"); 
    return 0; 
}

```
### 服务端

``` C
#include  
#include  
#include  
#include  
#include  
#include  
#include  
#include  
#include  
  
#define FINISH_FLAG "FILE_TRANSPORT_FINISH" 
#define MAXLINE 1024 
  
void usage(char *command) 
{ 
    printf("usage :%s portnum filename\n", command); 
    exit(0); 
} 
int main(int argc,char **argv) 
{ 
    struct sockaddr_in serv_addr; 
    struct sockaddr_in clie_addr; 
    char buf[MAXLINE]; 
    int sock_id; 
    int recv_len; 
    int clie_addr_len; 
    FILE *fp; 
  
    if (argc != 3) { 
        usage(argv[0]); 
    } 
    /* Create the the file commented by guoqingbo*/ 
    if ((fp = fopen(argv[2], "w")) == NULL) { 
        perror("Creat file failed"); 
        exit(0); 
    } 
    if ((sock_id = socket(AF_INET,SOCK_DGRAM,0)) < 0) { 
        perror("Create socket failed\n"); 
        exit(0); 
    } 
    /*fill the server sockaddr_in struct commented by guoqingbo*/ 
    memset(&serv_addr,0,sizeof(serv_addr)); 
    serv_addr.sin_family = AF_INET; 
    serv_addr.sin_port = htons(atoi(argv[1])); 
    serv_addr.sin_addr.s_addr = htonl(INADDR_ANY); 
  
    if (bind(sock_id,(struct sockaddr *)&serv_addr,sizeof(serv_addr)) < 0 ) { 
        perror("Bind socket faild\n"); 
        exit(0); 
    } 
    /* server part commented by guoqingbo*/ 
    clie_addr_len = sizeof(clie_addr); 
    bzero(buf, MAXLINE); 
    while (recv_len = recvfrom(sock_id, buf, MAXLINE, 0,(struct sockaddr *)&clie_addr, &clie_addr_len)) { 
        if(recv_len < 0) { 
            printf("Recieve data from client failed!\n"); 
            break; 
        } 
        printf("#"); 
        if ( strstr(buf, FINISH_FLAG) != NULL ) { 
            printf("\nFinish receiver finish_flag\n"); 
            break; 
        } 
        int write_length = fwrite(buf, sizeof(char), recv_len, fp); 
        if (write_length < recv_len) { 
            printf("File write failed\n"); 
            break; 
        } 
        bzero(buf, MAXLINE); 
    } 
  
    printf("Finish recieve\n"); 
    fclose(fp); 
    close(sock_id); 
    return 0; 
}
```

### 截图
udp_file_client

![udp_file_client](http://function.dearamaze.com/udp_file_client.png)

udp_file_server

![udp_file_client](http://function.dearamaze.com/udp_file_server.png)
#include <stdio.h>
#include <stdlib.h>

#include <libnet.h>
#include <unistd.h>


void fun( char* src, int sport,  char *dst, int dport, char * control ) {
    char errBuff[1024];

    libnet_t *link = libnet_init(LIBNET_RAW4, NULL, errBuff);
    if (link == NULL ) {
        perror("init: ");
    }
    
    // char *dport = 22;
    // char *dst = pack->dst;
    // int src = rand();

    // if (controlFlag ==)
    // switch (controlFlag) {
    //     case 1:
    //         controlFlag = TH_SYN;
    //         break;
        
    //     case 2:
    //         controlFlag = TH_FIN;
    //         break;
    // }

    int controlFlag;
    // printf("%s\n", control);

    if (! strcmp(control, "syn")) {
        controlFlag = TH_SYN;
    } else if (! strcmp(control, "fin")) {
        controlFlag = TH_FIN;
    
    } else {
        printf( "参数错误");
        return;
    }

    // int controlFlag = ; // 控制符
    int seqNum = 0;
    int ackNum = 0;
    int win = 1024;

    char *msg = "";
    int msgLen = strlen( msg);

    // 构建,tcp包
    libnet_build_tcp(
        sport, dport,

        seqNum,  ackNum,

        controlFlag,  win,

        0, 0, LIBNET_TCP_H,
        
        msg, msgLen,
        link, 0);
    
    int ipId=0;
    int ipPos=0;
    int ttl = 64;
    int bfProt = IPPROTO_TCP; // 上层协议

    // 构建 ipv4 包
    libnet_build_ipv4(
        LIBNET_IPV4_H + LIBNET_TCP_H, 0,
        ipId, ipPos,
        ttl, bfProt, 0, // 校验和（自动计算）

        atol(src), libnet_name2addr4(link, dst, LIBNET_DONT_RESOLVE) ,
        NULL, 0, // 负载数据为空,  长度为0
        link, 0 
    );

    
    int ret = libnet_write(link);
    if (ret == -1) {
        fprintf(stderr, "libnet_write() failed: %s\n", libnet_geterror(link ));
        libnet_destroy(link);
        // exit(EXIT_FAILURE);
        return;
    }
    // printf("aaa\n");
    libnet_destroy(link);

    // printf("%d\n", 1);

    // printf("%s\n", a);
}


int main(int argc, char **argv) {
   fun(argv[1], atol(argv[2]), argv[3], atol(argv[4]), argv[5] );

}
